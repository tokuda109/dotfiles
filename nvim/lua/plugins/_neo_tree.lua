local status_ok, neo_tree = pcall(require, 'neo-tree')
if not status_ok then
  return
end

local opt = { noremap = true, silent = true }

neo_tree.setup({
  filesystem = {
    filtered_items = {
      hide_dotfiles = false,
      hide_gitignored = false,
    }
  },
  window = {
    mappings = {
      ['s'] = 'open_split',
      ['v'] = 'open_vsplit',
      ['<C-c>'] = 'close_window',
    }
  },
})

vim.keymap.set('n', 'ft', '<Cmd>NeoTreeFloatToggle<CR>', opt)
vim.keymap.set('n', 'fg', '<Cmd>NeoTreeFloatToggle git_status<CR>', opt)
