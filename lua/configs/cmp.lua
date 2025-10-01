local cmp = require "cmp"

local options = {
  completion = {
    completeopt = "menu,menuone",
  },

  window = {
    completion = {
      side_padding = 1,
      winhighlight = "Normal:CmpPmenu,CursorLine:CmpSel,Search:None",
      scrollbar = false,
    },
    documentation = {
      border = "rounded",
      winhighlight = "Normal:CmpDoc",
    },
  },

  snippet = {
    expand = function(args)
      require("luasnip").lsp_expand(args.body)
    end,
  },

  formatting = require("nvchad.cmp").formatting,

  mapping = {
    ["<C-p>"] = cmp.mapping.select_prev_item(),
    ["<C-n>"] = cmp.mapping.select_next_item(),
    ["<C-d>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<C-e>"] = cmp.mapping.close(),

    ["<CR>"] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Insert,
      select = true,
    },

    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif require("luasnip").expand_or_jumpable() then
        require("luasnip").expand_or_jump()
      else
        fallback()
      end
    end, { "i", "s" }),

    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif require("luasnip").jumpable(-1) then
        require("luasnip").jump(-1)
      else
        fallback()
      end
    end, { "i", "s" }),
  },

  sources = {
    { name = "codeium", priority = 1000 },
    { name = "nvim_lsp", priority = 500 },
    { name = "luasnip", priority = 750 },
    { name = "buffer", priority = 250 },
    { name = "async_path", priority = 100 },
  },
}

return options
