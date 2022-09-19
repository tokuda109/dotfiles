local status_ok, nvim_tree = pcall(require, 'nvim-tree')
if not status_ok then
  return
end

nvim_tree.setup({})

vim.api.nvim_set_keymap('n', 't', '<cmd>lua require\'nvim-tree\'.toggle(false, true)<cr>', { noremap = true })
