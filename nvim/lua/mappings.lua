local opt = { noremap = true, silent = true }

-- Remap leader as space key
vim.g.mapleader = ' '
vim.keymap.set('n', '<Space>', '', opt)
vim.keymap.set('v', '<Space>', '', opt)

vim.keymap.set('n', 'q', '<Nop>', opt)

vim.keymap.set({ 'n', 'i', 'v' }, ';', ':', opt)
vim.keymap.set({ 'n', 'i', 'v' }, ':', ';', opt)

-- Navigation in insert mode
vim.keymap.set('i', '<M-h>', '<Left>', opt)
vim.keymap.set('i', '<M-j>', '<Down>', opt)
vim.keymap.set('i', '<M-k>', '<Up>', opt)
vim.keymap.set('i', '<M-l>', '<Right>', opt)

-- Tab navigation
vim.keymap.set('n', '<Tab>', '<Cmd>tabnext<CR>', opt)
vim.keymap.set('n', '<S-Tab>', '<Cmd>tabprev<CR>', opt)

-- Clean highlight search
vim.keymap.set('n', '<Esc><Esc>', '<Cmd>nohlsearch<CR>', opt)

-- Reload init.lua without restarting neovim
vim.keymap.set('n', '<Leader>r', '<Cmd>source $MYVIMRC<CR> | <Cmd>echo "$MYVIMRC reloaded"<CR>', opt)

