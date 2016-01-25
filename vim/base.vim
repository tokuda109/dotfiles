" -----------------------------------------------------------------------------
" 基本設定
" -----------------------------------------------------------------------------

" エンコーディングの設定
set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,ucs-bom,euc-jp,cp932,iso-2022-jp,sjis,euc-jp

" 改行コードの自動認識
set fileformats=unix,dos,mac

" バックアップファイルを作らない
set nobackup

" スワップファイル作らない
set noswapfile

" 行が長くなっても折り返し表示しない
set nowrap

" 括弧の対応をハイライト
set showmatch

" 現在行をハイライト
set cursorline

" 次のタブに切り替え
noremap <Tab> gt

" 前のタブに切り替え
noremap <S-Tab> gT

colorscheme Wombat

syntax enable
