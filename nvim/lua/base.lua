vim.cmd('autocmd!')

vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

vim.opt.number = true             -- Show line number
vim.opt.wrap = false

vim.opt.hlsearch = true           -- Highlight all search results
vim.opt.incsearch = true          -- Search strings incrementally
vim.opt.ignorecase = true         -- Ignore case letters when search
vim.opt.showmatch = true          -- Highlight matching parenthesis

vim.opt.cursorline = true
vim.opt.background = 'dark'
vim.opt.termguicolors = true      -- Enable 24-bit RGB colors

vim.opt.smartindent = true
vim.opt.autoindent = true         -- Autoindent new lines

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.smarttab = true
vim.opt.expandtab = true          -- Insert space character

vim.opt.swapfile = false          -- Disable swapfile

vim.opt.cmdheight = 0             -- Set zero height to command line area
