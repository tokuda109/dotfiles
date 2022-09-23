local status_ok, nvim_tree = pcall(require, 'nvim-tree')
if not status_ok then
  return
end

-- disable netrw at the very start of your init.lua
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

nvim_tree.setup({
  actions = {
    open_file = {
      quit_on_open = true,
      window_picker = {
        enable = true,
      }
    }
  },
  sort_by = 'case_sensitive'
})

vim.api.nvim_set_keymap('n', 't', '<cmd>lua require\'nvim-tree\'.toggle(false, true)<cr>', { noremap = true })
