-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "tokyonight",
  transparency = false,
  statusline = {
    theme = "vscode_colored",
  },

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
    DiffChange = {
      bg = "#464414",
      fg = "none",
    },
    DiffAdd = {
      bg = "#103507",
      fg = "none",
    },
    DiffRemoved = {
      bg = "#461414",
      fg = "none",
    },
  },
}

M.nvdash = {
  load_on_startup = true,
  header = {
    "██████╗ ██╗   ██╗██████╗ ██████╗ ██╗     ███████╗",
    "██╔══██╗██║   ██║██╔══██╗██╔══██╗██║     ██╔════╝",
    "██████╔╝██║   ██║██████╔╝██████╔╝██║     █████╗  ",
    "██╔═══╝ ██║   ██║██╔══██╗██╔═══╝ ██║     ██╔══╝  ",
    "██║     ╚██████╔╝██║  ██║██║     ███████╗███████╗",
    "╚═╝      ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚══════╝╚══════╝",
  },
}
-- M.ui = {
--       tabufline = {
--          lazyload = false
--      }
-- }

return M
