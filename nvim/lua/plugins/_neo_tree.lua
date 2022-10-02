local status_ok, neo_tree = pcall(require, 'neo-tree')
if not status_ok then
  return
end

neo_tree.setup({
  window = {
    mappings = {
      ['<C-c>'] = 'close_window',
    }
  },
})

vim.api.nvim_set_keymap('n', 'ft', '<cmd>NeoTreeFloatToggle<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', 'fg', '<cmd>NeoTreeFloatToggle git_status<cr>', { noremap = true })
