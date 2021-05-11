" =================================
" ======== basic settings =========
" =================================
" incompatible with vi
set nocompatible

" show absolute number
" set number

" set relative number
set relativenumber

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
" back indent length when insert mode
set softtabstop=4
" >> & << is 4 spaces
set shiftwidth=4

" the cusorline is highlighted
" set cursorline

" show cursor position
set ruler

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

set wrap

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

" initials case
nnoremap <LEADER>c eb~

nnoremap < <<
nnoremap > >>


