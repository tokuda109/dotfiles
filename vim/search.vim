" ------------------------------------------------------------------------------
" 検索の設定
" ------------------------------------------------------------------------------

" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase

" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase

" インクリメンタルサーチを有効にする
set incsearch

" 検索でマッチした文字列をハイライトする
set hlsearch

" Esc連打で検索時にハイライトを消す
nnoremap <ESC><ESC> :nohlsearch<CR>
