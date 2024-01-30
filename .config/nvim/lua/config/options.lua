-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Encoding
vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

-- Show line number
vim.opt.number = true
vim.opt.relativenumber = false

-- Enable line wrapping
vim.opt.wrap = true
vim.opt.linebreak = true

-- Highlight the current cursor line
vim.opt.cursorline = true
-- Set default background color
vim.opt.background = "dark"
-- Enable 24-bit RGB colors
vim.opt.termguicolors = true

-- Indent new line with C syntax primitives
vim.opt.smartindent = true
-- Autoindent new line
vim.opt.autoindent = true
-- Preserve indent on wrapped lines
vim.opt.breakindent = true

-- 2 spaces for tabs
vim.opt.tabstop = 2
-- 2 spaces for indent width
vim.opt.shiftwidth = 2
--
vim.opt.smarttab = true
-- Insert space character
vim.opt.expandtab = true
