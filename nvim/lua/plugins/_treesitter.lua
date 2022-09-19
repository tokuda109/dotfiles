local status_ok, configs = pcall(require, 'nvim-treesitter.configs')
if not status_ok then
  return
end

configs.setup({
  ensure_installed = {
    'css',
    'go',
    'html',
    'javascript',
    'lua',
    'typescript',
  },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
})
