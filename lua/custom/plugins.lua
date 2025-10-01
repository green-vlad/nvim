local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "gopls",
        "intelephense",
        "typescript-language-server",
        "eslint-lsp",
        "prettier",
        "js-debug-adapter",
        "php-cs-fixer",
      },
    },
  },
  {
    "hrsh7th/nvim-cmp",
    opts = function()
      return require "configs.cmp"
    end,
  },
  {
    "Exafunction/codeium.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
    },
    config = function()
      require("codeium").setup({
        enable_chat = true,
        enable_cmp_source = true,
        virtual_text = {
          enabled = true,
          map_keys = true,
          key_bindings = {
            accept = "<C-g>",
            accept_word = "<C-k>",
            accept_line = "<C-l>",
            next = "<C-]>",
            prev = "<C-[>",
            dismiss = "<C-x>",
          }
        },
      })
    end,
    event = "BufEnter",
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "javascript",
        "typescript",
        "tsx",
        "json",
        "html",
        "css",
        "scss",
        "lua",
        "vim",
        "vimdoc",
        "go",
        "php",
        "markdown",
        "markdown_inline",
      },
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
      },
    },
  },
}
return plugins
