" basic settings

" default encoding
set encoding=utf-8

" automatically identify what encoging is used ,otherwise utf8 is adopted
"set fileencodings=euc-jp,sjis,cp932,utf-8

" disable vi compatible 
set nocompatible
set ignorecase  " 検索に大文字小文字を区別しない
set smartcase   " 大文字が含まれる場合のみ、検索に大文字小文字を区別する
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
set hlsearch    " 検索マッチテキストをハイライト
set incsearch   " インクリメンタルサーチ
set list
set listchars=tab:>>,trail:-
set clipboard+=unnamed
set showmatch   " 対応するカッコをハイライト

let g:vimfiler_as_default_explorer=1

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
Bundle 'thinca/vim-template'
Bundle 'altercation/vim-colors-solarized'

filetype plugin indent on

" color theme
" syntax enable
" if has('gui_running')
"     set background=light
" else
"     set background=dark
" endif
" set t_Co=16
" colorscheme solarized
