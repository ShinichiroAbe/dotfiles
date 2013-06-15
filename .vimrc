" basic settings

" disable vi compatible 
set nocompatible

set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
set number
set smartindent
set wildmenu
set laststatus=2
set statusline=%f%m%=%y[%{&fileencoding}][%{&fileformat}]
set showtabline=2
set hlsearch
set incsearch
set list
set listchars=tab:>-,trail:-
set clipboard+=unnamed


" vundle settings
filetype off

set rtp+=~/.vim/vundle/
call vundle#rc()

Bundle 'rails.vim'
Bundle 'Shougo/unite.vim'
Bundle 'Shougo/vimfiler.vim'
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/vimproc'
Bundle 'Shougo/vimshell'
Bundle 'tomtom/tcomment_vim'
Bundle 'thinca/vim-quickrun'

filetype plugin indent on
