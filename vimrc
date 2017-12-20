" Author : Hari Yerramsetty
" github : github.com/ghraka



" Initial vundle setup
set nocompatible
filetype off

" Set runtime path for Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'tpope/vim-surround'
Plugin 'ervandew/supertab'
Plugin 'itchyny/lightline.vim'
Plugin 'godlygeek/tabular'
Plugin 'elixir-editors/vim-elixir'
call vundle#end() 

filetype plugin on
filetype indent on

" Auto read when a file is changed from the outside
set autoread

" Set relative number for easy navigation using :set relativenumber or :setrnu
set relativenumber

" Setting , as the leader key
let mapleader = ","
let g:mapleader =","

" Fast saving 
nmap <leader>s :w!<cr>
nmap <leader>a :q<cr>

" Railscats color scheme
colorscheme railscasts

" Ignore case when searching
set ignorecase

" When 'ignorecase' and 'smartcase' are both on, if a pattern contains an
" uppercase letter, it is case sensitive, otherwise, it is not. For example,
" /The would find only 'The', while /the would find 'the' or 'The' etc. 
set smartcase

" hlsearch hightlights search results
set hlsearch

" Disable error sounds
set noerrorbells
set novisualbell

" Use spaces instead of tabs
set expandtab

" Using smart tabs for align and code indentation
set smarttab

" To display the status line always
set laststatus=2
syntax on

" Settings for ruby file types
autocmd Filetype ruby set softtabstop=2
autocmd Filetype ruby set sw=2
autocmd Filetype ruby set ts=2

" Settings for html file types
autocmd Filetype html setlocal ts=2 sts=2 sw=2 expandtab

" Disable arrow keys while in normal mode
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Map ; to : incase there is an accidental key press while saving file
nnoremap ; :

" Trying to map search
map <M-space> ?
map <space> /

" Map 0 to ^
map 0 ^

" No swapfiles
set nobackup
set nowb
set noswapfile
