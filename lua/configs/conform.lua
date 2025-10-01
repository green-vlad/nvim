local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    javascript = { "prettier" },
    typescript = { "prettier" },
    javascriptreact = { "prettier" },
    typescriptreact = { "prettier" },
    json = { "prettier" },
    css = { "prettier" },
    html = { "prettier" },
    markdown = { "prettier" },
    php = { "php_cs_fixer" },
  },

  formatters = {
    php_cs_fixer = {
      command = "php-cs-fixer",
      args = {
        "fix",
        "--rules=@PSR12",
        "$FILENAME",
      },
      stdin = false,
    },
  },

  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
