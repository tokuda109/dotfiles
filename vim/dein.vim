" ------------------------------------------------------------------------------
" Dein.vim設定
" ------------------------------------------------------------------------------

if has('vim_starting')
  if &compatible
    set nocompatible
  endif

  set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim
endif

call dein#begin(expand('~/.vim/dein'))

call dein#add("Shougo/dein.vim")

call dein#add("neoclide/coc.nvim", {'merged': 0, 'rev': 'release'})

call dein#add("honza/vim-snippets")

call dein#add("vim-scripts/Wombat")

call dein#add("bling/vim-airline")

call dein#add("scrooloose/nerdtree")

call dein#add("ctrlpvim/ctrlp.vim")

call dein#add("tpope/vim-fugitive")

call dein#add("mattn/emmet-vim")

call dein#add("othree/html5.vim")
call dein#add("othree/yajs.vim")
call dein#add("leafgarland/typescript-vim")

if has('vim_starting') && dein#check_install()
  call dein#install()
endif

call dein#end()
