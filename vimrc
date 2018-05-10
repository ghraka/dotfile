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
Plugin 'godlygeek/tabular'
Plugin 'elixir-editors/vim-elixir'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-bundler'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-rails'
Plugin 'wikitopian/hardmode'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
call vundle#end() 

filetype plugin on
filetype indent on

" Enable Hardmode
" autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

" Auto read when a file is changed from the outside
set autoread

" Set relative number for easy navigation using :set relativenumber or :setrnu
" set norelativenumber
" Set numbers for easy navigation set number
set number

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

syntax on

" Settings for ruby file types
autocmd Filetype ruby set softtabstop=2
autocmd Filetype ruby set sw=2
autocmd Filetype ruby set ts=2

" Settings for html file types
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype erb setlocal ts=2 sts=2 sw=2

" Setting for javascript file types
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2

" Disable arrow keys while in normal mode
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Map 0 to ^
map 0 ^

" No swapfiles
set nobackup
set nowb
set noswapfile

" Backspace
set backspace=indent,eol,start

" Disable search highlight
set nohlsearch

nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

" Ignore some folders and files for CtrlP indexing
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.sass-cache$|\.hg$\|\.svn$\|\.yardoc\|public$|log\|tmp$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
\ }
