local status_ok, hop = pcall(require, 'hop')
if not status_ok then
  return
end

hop.setup({})

vim.api.nvim_set_keymap('n', 'FF', '<cmd>lua require\'hop\'.hint_words()<cr>', {})
vim.api.nvim_set_keymap('n', 'Fc', '<cmd>lua require\'hop\'.hint_char1()<cr>', {})
vim.api.nvim_set_keymap('n', 'Fl', '<cmd>lua require\'hop\'.hint_lines()<cr>', {})
