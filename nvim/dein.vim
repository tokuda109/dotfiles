if has('vim_starting')
  if &compatible
    set nocompatible
  endif

  set runtimepath+=~/.config/nvim/dein/repos/github.com/Shougo/dein.vim
endif

call dein#begin(expand('~/.config/nvim/dein'))

call dein#add('Shougo/dein.vim')

call dein#add('neoclide/coc.nvim', {'merged': 0, 'rev': 'release'})

call dein#add('honza/vim-snippets')

call dein#add('bling/vim-airline')

call dein#add('mattn/emmet-vim')

if has('vim_starting') && dein#check_install()
  call dein#install()
endif

call dein#end()
