local status_ok, telescope = pcall(require, 'telescope')
if not status_ok then
  return
end

local opt = { noremap = true, silent = true }

telescope.setup({
  defaults = {
    file_ignore_patterns = {
      'node_modules'
    },
    mappings = {
      i = {},
      n = {
        ["<C-h>"] = "select_horizontal",
        ["<C-v>"] = "select_vertical",
      },
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

vim.keymap.set('n', 'ff', '<Cmd>lua require(\'telescope.builtin\').find_files()<CR>', opt)
vim.keymap.set('n', 'fl', '<Cmd>lua require(\'telescope.builtin\').live_grep()<CR>', opt)
vim.keymap.set('n', 'fb', '<Cmd>lua require(\'telescope\').extensions.file_browser.file_browser()<CR>', opt)
