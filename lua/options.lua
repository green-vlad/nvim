require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

-- PHP file settings
vim.api.nvim_create_autocmd("FileType", {
  pattern = "php",
  callback = function()
    vim.bo.tabstop = 4
    vim.bo.shiftwidth = 4
    vim.bo.expandtab = true
  end,
})

-- Go file settings
vim.api.nvim_create_autocmd("FileType", {
  pattern = "go",
  callback = function()
    vim.bo.tabstop = 4
    vim.bo.shiftwidth = 4
    vim.bo.expandtab = true
  end,
})

-- JavaScript/TypeScript file settings
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "javascript", "typescript", "javascriptreact", "typescriptreact" },
  callback = function()
    vim.bo.tabstop = 2
    vim.bo.shiftwidth = 2
    vim.bo.expandtab = true
    vim.bo.softtabstop = 2
  end,
})

require("nvim-tree").setup {
  filters = {
    dotfiles = false,  -- показывать скрытые файлы (.env, .gitignore и т.д.)
    git_ignored = false,  -- показывать файлы из .gitignore
    custom = {},  -- не скрывать файлы по кастомным паттернам
  },
}


