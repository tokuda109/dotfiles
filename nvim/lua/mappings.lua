local opt = { noremap = true, silent = true }

-- Remap leader as space key
vim.g.mapleader = ' '
vim.api.nvim_set_keymap('n', '<Space>', '', opt)
vim.api.nvim_set_keymap('v', '<Space>', '', opt)

vim.api.nvim_set_keymap('n', ';', ':', opt)
vim.api.nvim_set_keymap('n', ':', ';', opt)
vim.api.nvim_set_keymap('v', ';', ':', opt)
vim.api.nvim_set_keymap('v', ':', ';', opt)

-- Tab navigation
vim.api.nvim_set_keymap('n', '<Tab>', ':tabnext<CR>', opt)
vim.api.nvim_set_keymap('n', '<S-Tab>', ':tabprev<CR>', opt)

-- Clean highlight search
vim.api.nvim_set_keymap('n', '<Esc><Esc>', ':nohlsearch<CR>', opt)
