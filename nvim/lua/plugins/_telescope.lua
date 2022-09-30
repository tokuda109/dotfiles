local status_ok, telescope = pcall(require, 'telescope')
if not status_ok then
  return
end

telescope.setup({
  defaults = {
    file_ignore_patterns = {
      'node_modules'
    },
    mappings = {
      i = {},
      n = {},
    },
  },
  extensions = {
    file_browser = {
      hijack_netrw = true,
      mappings = {
        i = {},
        n = {},
      }
    }
  }
})

telescope.load_extension('file_browser')

vim.api.nvim_set_keymap('n', 'ff', '<cmd>lua require(\'telescope.builtin\').find_files()<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', 'fl', '<cmd>lua require(\'telescope.builtin\').live_grep()<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', 'fb', '<cmd>lua require(\'telescope\').extensions.file_browser.file_browser()<cr>', { noremap = true })
