-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt
local g = vim.g

opt.wrap = true
opt.breakindent = true
opt.linebreak = true
opt.number = true
opt.relativenumber = true
opt.tabstop = 2
opt.softtabstop = 2
opt.expandtab = true
opt.shiftwidth = 2
opt.background = "dark"
opt.linespace = 0
opt.scrolloff = 2
opt.pumblend = 0
opt.termguicolors = true
opt.winblend = 0
-- Set cursor appearance based on the mode
opt.guicursor = {
  "n-v-c:block", -- Block cursor in normal, visual, and command modes
  "i:ver25-blinkon500", -- Vertical blinking cursor in insert mode (blinks every 500ms)
  "r-cr:hor25", -- Horizontal line cursor in replace mode
}

g.lazyvim_picker = "telescope"
g.lazyvim_prettier_needs_config = false
-- g.lazyvim_prettier_needs_config = true

-- views can only be fully collapsed with the global statusline
vim.opt.laststatus = 2
