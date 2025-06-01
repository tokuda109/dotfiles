-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Window navigation
vim.keymap.set("n", "<Leader>h", "<C-w>h")
vim.keymap.set("n", "<Leader>j", "<C-w>j")
vim.keymap.set("n", "<Leader>k", "<C-w>k")
vim.keymap.set("n", "<Leader>l", "<C-w>l")

-- Cursor movement
vim.keymap.set("n", "<S-h>", "^")
vim.keymap.set("v", "<S-h>", "^")
vim.keymap.set("n", "<S-l>", "g_")
vim.keymap.set("v", "<S-l>", "g_")

-- Increment/decrement
vim.keymap.set("n", "+", "<C-a>")
vim.keymap.set("n", "-", "<C-x>")

-- Tab navigation
vim.keymap.set("n", "<Tab>", "<Cmd>tabnext<CR>")
vim.keymap.set("n", "<S-Tab>", "<Cmd>tabprev<CR>")

-- Reload init.lua without restarting neovim
vim.keymap.set("n", "<Leader>r", '<Cmd>source $MYVIMRC<CR> | <Cmd>echo "$MYVIMRC reloaded"<CR>')
