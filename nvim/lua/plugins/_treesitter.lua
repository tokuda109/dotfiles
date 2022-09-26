local status_ok, configs = pcall(require, 'nvim-treesitter.configs')
if not status_ok then
  return
end

configs.setup({
  ensure_installed = {
    'css',
    'dockerfile',
    'fish',
    'go',
    'graphql',
    'html',
    'javascript',
    'json',
    'lua',
    'typescript',
    'yaml',
  },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
})
