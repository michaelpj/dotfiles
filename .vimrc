runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
pathogen#helptags()

" turn off compatibility mode for vi (seriously)
set nocompatible

" syntax highlighting on
syntax on

" enable filetype detection and language-dependent indenting.
filetype plugin indent on

set modelines=0

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set encoding=utf-8

" display relative line numbers
set relativenumber

" sane backspace behaviour
set backspace=indent,eol,start

" find the next match while typing
set incsearch
" highlight searches
set hlsearch

" leader mapped to ,
let mapleader = ","

" no swap files
set noswapfile

" no more arrow keys!
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
" j and k work sensibly with wrapped lines
nnoremap j gj
nnoremap k gk

" make semicolon work for commands
nnoremap ; :

