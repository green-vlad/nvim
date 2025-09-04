local M = {}

M.lspconfig = {
  n = {
    ["<leader>i"] = {
      function()
        vim.lsp.buf.implementation()
      end,
      "Go to implementation",
    },
  },
}


return M
