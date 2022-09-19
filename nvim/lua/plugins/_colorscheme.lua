vim.cmd('colorscheme tokyonight')

require('tokyonight').setup({
  style = 'night'
})
require('lualine').setup({
  options = {
    icons_enabled = true,
    theme = 'tokyonight'
  }
})
