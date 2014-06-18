
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent

" set cursor
set cursorline
highlight CursorLine term=reverse  cterm=NONE ctermbg=black

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
inoremap <silent> <C-i> <C-g>u<C-h>
inoremap <silent> <C-o> 
inoremap <silent> <C-g> <C-d>
inoremap <silent> <C-d> <Del>
inoremap <silent> <C-d>e <Esc>lc^
inoremap <silent> <C-d>o <Esc>lc$
inoremap <silent> <C-w>e <Esc>0<Insert>
inoremap <silent> <C-w>o <Esc>$<Insert>
inoremap { {}<Left>
inoremap [ []<Left>
inoremap " ""<Left>
inoremap ' ''<Left>
inoremap <> <><Left>
noremap <CR> o<Esc> 
nnoremap ; :
inoremap <C-s> <Esc>:w<CR><Insert>
inoremap <C-z> <Esc>u<Insert>
inoremap <C-y> <Esc><C-b><Insert>
inoremap <C-b> <Esc><C-f><Insert>
syntax on

set ignorecase
command Vf VimFiler -split -simple -winwidth=30 -no-quit

"-------------------------------------------
" neobundle
set nocompatible
filetype off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
  set runtimepath+=~/.vim/vim-template/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

filetype plugin indent on

if neobundle#exists_not_installed_bundles()
  echomsg 'Not installed bundles :' .
      \ string(neobundle#get_not_installed_bundle_names())
  echomsg 'Please execute ":NeobundleInstall" command.'
endif

NeoBundle 'https://github.com/Shougo/neocomplcache'
NeoBundle 'https://github.com/Shougo/vimfiler'
NeoBundle 'https://github.com/Shougo/unite.vim'

