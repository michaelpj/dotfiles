" PATHOGEN
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()

" BASICS

" try this for esc
inoremap jj <Esc> 
" leader mapped to ,
let mapleader = ","

" turn off compatibility mode for vi (seriously)
set nocompatible

" syntax highlighting on
syntax on

" enable filetype detection and language-dependent indenting.
filetype on

"filetype plugin indent on
filetype plugin on
filetype indent on

" force syntax highlighting to sync from start of file
syntax sync fromstart

" apparently this stops some security problems
set modelines=0

" tab settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set shiftround
set smarttab

set encoding=utf-8

" nicer split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" enable the mouse
set mouse=a

" switch buffers without having to save
set hidden

" display relative line numbers
set relativenumber

" sane backspace behaviour
set backspace=indent,eol,start

" no swap files or backup
set noswapfile
set nobackup

" automatically change working directory to location of current file
set autochdir

" VISUAL

" set font
if has("gui_running")
  if has("gui_gtk2")
    set guifont=DejaVu\ Sans\ Mono\ 11
  elseif has("gui_win32")
    set guifont=DejaVu\ Sans\ Mono:h10:cANSI
  endif
endif

set display=lastline
set background=dark
" colorscheme solarized
colorscheme molokai

" MOVEMENT
" no more arrow keys!
" nnoremap <up> <nop>
" nnoremap <down> <nop>
" nnoremap <left> <nop>
" nnoremap <right> <nop>
" inoremap <up> <nop>
" inoremap <down> <nop>
" inoremap <left> <nop>
" inoremap <right> <nop>

" j and k work sensibly with wrapped lines
nnoremap j gj
nnoremap k gk

" use tab instead of % for going to matching brackets
nnoremap <tab> %
vnoremap <tab> %

" SEARCH

" find the next match while typing
set incsearch

" highlight searches
set hlsearch

" clear search highlighting
nnoremap <Leader><space> :noh<CR>

" use normal regex syntax
nnoremap / /\v
vnoremap / /\v

" sensible case-sensitivity: none if search string is all lower-case
set ignorecase
set smartcase

" make tilde (invert case) behave like an operator
set tildeop

" COMMANDS

" make semicolon work for commands
nnoremap ; :

" delete (surrounding) function application
nmap <Leader>df lbdt(ds)
nmap <Leader>dsf ds)db

" vimrc editing and sourcing
nmap <Leader>e :e ~/.vimrc<CR>
nmap <Leader>s :so ~/.vimrc<CR>

" toggle NERDtree
nmap <Leader>n :NERDTreeToggle<CR>

" NERDtree directory stuff
let NERDTreeChDirMode=2

" toggle rainbow parentheses
nmap <Leader>rp :RainbowParenthesesToggle<CR>

" toggle relative line numbers
function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc

nnoremap <Leader>rn :call NumberToggle()<CR>

" PLUGINS

" switch buffers with single clck
let g:miniBufExplUseSingleClick=1

" use control + vim navigation key to move windows
let g:miniBufExplMapWindowNavVim=1

" use <C-TAB> and <C-S-TAB> to cycle forward and backwards through buffers
let g:miniBufExplMapCTabSwitchBufs=1

" highlight basic types in Haskell
let g:hs_highlight_types=1

" highlight booleans in Haskell
let g:hs_highlight_boolean=1

set laststatus=2

