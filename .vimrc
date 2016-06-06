set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'https://github.com/vim-scripts/ScrollColors'
Plugin 'tpope/vim-fugitive.git'
Plugin 'steffanc/cscopemaps.vim'
Plugin 'tpope/surround.vim'
Plugin 'tpope/commentary.vim'
Plugin 'terryma/vim-smooth-scroll'

call vundle#end()
filetype plugin indent on

python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

syntax enable
set encoding=utf-8
set showcmd

set number
set relativenumber

set wildmenu
set wildmode=full

set tabstop=2 shiftwidth=2
set expandtab
set backspace=indent,eol,start

set hlsearch
set incsearch
set ignorecase
set smartcase

set laststatus=2
set autoindent
set smartindent
set dictionary=/usr/share/dict/words

colorscheme default

noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>



