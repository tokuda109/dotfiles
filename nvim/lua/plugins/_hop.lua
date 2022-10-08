local status_ok, hop = pcall(require, 'hop')
if not status_ok then
  return
end

local opt = { noremap = true, silent = true }

hop.setup({})

vim.keymap.set('n', 'FF', '<cmd>lua require\'hop\'.hint_words()<cr>', opt)
vim.keymap.set('n', 'Fc', '<cmd>lua require\'hop\'.hint_char1()<cr>', opt)
vim.keymap.set('n', 'Fl', '<cmd>lua require\'hop\'.hint_lines()<cr>', opt)
