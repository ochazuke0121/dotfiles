
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent

" set cursor
set cursorline
highlight CursorLine term=reverse  cterm=bold ctermbg=234

" status bar
set laststatus=2
set statusline=%<%F\ %m\%=[%l/%L]
highlight StatusLine guifg=While guibg=Green

" keymap

nnoremap <C-k> k
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
nnoremap 0 $
nnoremap 1 0
inoremap <silent> <C-g> <C-d>
inoremap <silent> <C-d> <Del>
inoremap <silent> <C-w>e <Esc>0<Insert>
inoremap <silent> <C-w>o <Esc>$<Insert>
noremap ; :
syntax on

set ignorecase
command Vf VimFiler -split -simple -winwidth=30 -no-quit

"-------------------------------------------
"autocmd
autocmd BufNewFile,BufRead *.rabl set ft=ruby fenc=utf-8

"-------------------------------------------
" neobundle

if !1 | finish | endif

if has('vim_starting')
  if &compatible
    set nocompatible
  endif

  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neocomplcache.vim'
NeoBundleFetch 'Shougo/vimfiler.vim'
NeoBundleFetch 'Shougo/unite.vim'

call neobundle#end()

filetype plugin indent on

NeoBundleCheck
