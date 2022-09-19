local opt = { noremap = true, silent = true }

-- Remap leader as space key
vim.g.mapleader = ' '
vim.api.nvim_set_keymap('n', '<Space>', '', { noremap = true })
vim.api.nvim_set_keymap('v', '<Space>', '', { noremap = true })

vim.api.nvim_set_keymap('n', ';', ':', { noremap = true })
vim.api.nvim_set_keymap('n', ':', ';', { noremap = true })
vim.api.nvim_set_keymap('v', ';', ':', { noremap = true })
vim.api.nvim_set_keymap('v', ':', ';', { noremap = true })

-- Tab navigation
vim.api.nvim_set_keymap('n', '<Tab>', 'gt', opt)
vim.api.nvim_set_keymap('n', '<S-Tab>', 'gT', opt)

-- Window navigation
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', opt)
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', opt)
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', opt)
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', opt)

-- Clean highlight search
vim.api.nvim_set_keymap('n', '<Esc><Esc>', ':nohlsearch<CR>', opt)
