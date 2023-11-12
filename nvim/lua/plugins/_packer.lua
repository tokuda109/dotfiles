local status, packer = pcall(require, 'packer')
if (not status) then
  print('Packer is not installed')
  return
end

vim.cmd('packadd packer.nvim')

return packer.startup(function(use)
  use({'wbthomason/packer.nvim'})
  use({'kyazdani42/nvim-web-devicons'})
  use({'folke/tokyonight.nvim'})
  use({'nvim-lua/plenary.nvim'})
  use({'neovim/nvim-lspconfig'})
  use({'williamboman/mason.nvim'})
  use({'williamboman/mason-lspconfig.nvim'})
  use({'hrsh7th/nvim-cmp'})
  use({'hrsh7th/cmp-nvim-lsp'})
  use({'hrsh7th/cmp-vsnip'})
  use({'nvim-telescope/telescope.nvim', tag = '0.1.4'})
  use({'nvim-telescope/telescope-file-browser.nvim'})
  use({'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'})
  use({'nvim-neo-tree/neo-tree.nvim', branch = 'v2.x', requires = {
    'MunifTanjim/nui.nvim'
  }})
  use({'windwp/nvim-autopairs'})
  use({'windwp/nvim-ts-autotag'})
  use({'mattn/emmet-vim', ft = {
    'html',
    'javascript.jsx',
    'typescript.tsx',
  }})
  use({'lukas-reineke/indent-blankline.nvim'})
  use({'gpanders/editorconfig.nvim'})
  use({'phaazon/hop.nvim', branch = 'v2'})
  use({'nvim-lualine/lualine.nvim'})
  use({'numToStr/Comment.nvim'})
  use({'lewis6991/gitsigns.nvim'})
  use({'windwp/nvim-autopairs'})
  use({'ur4ltz/surround.nvim'})
end)
