" basic settings

" default encoding
set encoding=utf-8

" automatically identify what encoging is used ,otherwise utf8 is adopted
set fileencodings=euc-jp,sjis,cp932,utf-8

" disable vi compatible 
set nocompatible
set ignorecase  " 検索に大文字小文字を区別しない
set smartcase   " 大文字が含まれる場合のみ、検索に大文字小文字を区別する
set textwidth=79    " lines longer than 79 columns will be broken
set shiftwidth=4    " operation >> indents 4 columns; << unindents 4 columns
set tabstop=4       " an hard TAB displays as 4 columns
set softtabstop=4   " insert/delete 4 spaces when hitting a TAB/BACKSPACE
set shiftround      " round indent to multiple of 'shiftwidth'
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

" keymappings
" normal mode
noremap <CR> o<ESC>

" Anywhere SID.
function! s:SID_PREFIX()
    return matchstr(expand('<sfile>'), '<SNR>\d\+_\zeSID_PREFIX$')
endfunction

" Set tabline.
function! s:my_tabline()  "{{{
    let s = ''
    for i in range(1, tabpagenr('$'))
        let bufnrs = tabpagebuflist(i)
        let bufnr = bufnrs[tabpagewinnr(i) - 1]  " first window, first appears
        let no = i  " display 0-origin tabpagenr.
        let mod = getbufvar(bufnr, '&modified') ? '!' : ' '
        let title = fnamemodify(bufname(bufnr), ':t')
        let title = '[' . title . ']'
        let s .= '%'.i.'T'
        let s .= '%#' . (i == tabpagenr() ? 'TabLineSel' : 'TabLine') . '#'
        let s .= no . ':' . title
        let s .= mod
        let s .= '%#TabLineFill# '
    endfor
    let s .= '%#TabLineFill#%T%=%#TabLine#'
    return s
endfunction "}}}
let &tabline = '%!'. s:SID_PREFIX() . 'my_tabline()'
set showtabline=2
" 常にタブラインを表示

" The prefix key.
nnoremap    [Tag]   <Nop>
nmap    t [Tag]
" Tab jump
for n in range(1, 9)
    execute 'nnoremap <silent> [Tag]'.n ':<C-u>tabnext'.n.'<CR>'
endfor
" t1で1番左のタブ、t2で1番左から2番目のタブにジャンプ

map <silent> [Tag]c :tablast <bar> tabnew<CR>
" tc 新しいタブを一番右に作る
map <silent> [Tag]x :tabclose<CR>
" tx タブを閉じる
map <silent> [Tag]n :tabnext<CR>
" tn 次のタブ
map <silent> [Tag]p :tabprevious<CR>
" tp 前のタブ

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
