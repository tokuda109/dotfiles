" ------------------------------------------------------------------------------
" NeoBundle設定
" ------------------------------------------------------------------------------

if has('vim_starting')
  if &compatible
    set nocompatible
  endif

  set runtimepath+=~/.vim/bundle/neobundle.vim
endif

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch "Shougo/neobundle.vim"

NeoBundle "vim-scripts/Wombat"

NeoBundle "bling/vim-airline"

NeoBundle "scrooloose/nerdtree"

NeoBundle "kien/ctrlp.vim"

NeoBundle "tpope/vim-fugitive"

NeoBundle "Valloric/YouCompleteMe"

NeoBundle "mattn/emmet-vim"

NeoBundle "othree/html5.vim"
NeoBundle "othree/yajs.vim"

call neobundle#end()

NeoBundleCheck
