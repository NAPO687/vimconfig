" =================================
" ======== basic settings =========
" =================================
" incompatible with vi
set nocompatible

" 同时开启相对行号和绝对行号将会在当前行显示绝对行号
" show absolute number
set number
" show relative number
set relativenumber

" 进入insert mode时开启关闭相对行号，退出insert mode是开启相对行号
" augroup show_number
"     autocmd!
"     autocmd InsertEnter * :set norelativenumber
"     autocmd InsertLeave * :set relativenumber
" augroup END

" set encoding
set encoding=utf-8

set noundofile
set noswapfile
set nobackup

" syntax highlight
syntax on

" new line have the same indent with previous
set autoindent
" expand tab to space
set expandtab
" insert 4 spaces for a tab
set tabstop=4
" mix tab and space
set softtabstop=0
" >> & << is 4 spaces
set shiftwidth=4

" the cusorline is highlighted
" set cursorline

" show cursor position
set ruler
set wildmenu

set scrolloff=3

" search result show with highlight
set hlsearch
set incsearch
" searching ignore case
set ignorecase
" smart match
set smartcase

set autochdir
set noerrorbells
set history=1000

" ==========================
" ======== mapping =========
" ==========================

" set <leader> as <space>
let mapleader=" "
nnoremap <SPACE> <NOP>

" escape map to jj
inoremap jj <ESC>
inoremap <ESC> <NOP>

" copy setting 
vnoremap Y "+y
nnoremap Y V"+y

" cut setting
vnoremap D "+d
nnoremap D "+dd

" paste setting
vnoremap P "+p
nnoremap P "+p

" Redo
nnoremap U <C-r>

nnoremap <C-j> <C-f>
nnoremap <C-k> <C-b>

noremap <LEADER><CR> :nohlsearch<CR>

" quick exit
noremap Q :q<CR>

nnoremap < <<
nnoremap > >>

" 开关绝对行号
nnoremap <LEADER>rn :set relativenumber!<CR>

" 转换当前单词的首字母大小写
nnoremap <LEADER>ci viw<ESC>b~
" 转换当前单词为小写
nnoremap <LEADER>cu viwu
" 转换当前单词为大写
nnoremap <LEADER>cU viwU

" 为当前单词前后添加 ' 或 "
nnoremap <LEADER>' viw<ESC>a'<ESC>bi'<ESC>
nnoremap <LEADER>" viw<ESC>a"<ESC>bi"<ESC>

augroup formatgroup
    autocmd!
    autocmd BufWrite,BufWritePre *.html,*.c,*.java :normal gg=G
augroup END


