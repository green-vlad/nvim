local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "gopls",
        "intelephense",
      },
    },
  },
}
return plugins
