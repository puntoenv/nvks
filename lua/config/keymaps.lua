-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

-- Common mapping options to keep the code clean
local options = {
  noremap = true,
  silent = true,
}

function Keymap(mode, keymap, action, opts)
  if opts then
    vim.keymap.set(mode, keymap, action, opts)
  else
    vim.keymap.set(mode, keymap, action, options)
  end
end

Keymap({
  "i",
  "x",
  "n",
  "s",
}, "<A-s>", "<cmd>wa<CR><ESC>")

Keymap("i", "<C-h>", "<Left>")
Keymap("i", "<C-j>", "<ESC>gja")
Keymap("i", "<C-k>", "<ESC>gka")
Keymap("i", "<C-l>", "<Right>")
Keymap("i", "<A-o>", "<CMD>normal O<CR>")
Keymap("i", "<C-o>", "<CMD>normal o<CR>")
Keymap("i", "<Up>", "<ESC>gka")
Keymap("i", "<Down>", "<ESC>gja")

-- Move line up/down in normal mode
Keymap("n", "<A-j>", ":move .+1<CR>==") -- Move line down
Keymap("n", "<A-k>", ":move .-2<CR>==") -- Move line up

-- Move selected block up/down in visual mode (FIXED)
Keymap("v", "<A-j>", ":move '>+1<CR>gv=gv") -- Move selection down
Keymap("v", "<A-k>", ":move '<-2<CR>gv=gv") -- Move selection up

-- Move line up/down in insert mode
Keymap("i", "<A-j>", "<Esc>:move .+1<CR>==a") -- Move line down in insert mode
Keymap("i", "<A-k>", "<Esc>:move .-2<CR>==a") -- Move line up in insert mode

Keymap("i", "<C-c>", function()
  vim.cmd("normal gcca") -- Run gcca in normal mode
end)
