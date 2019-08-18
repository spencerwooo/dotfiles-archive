" Basics
set number
set ruler
set showmode
set showcmd
set mouse=a
set nocompatible

" Set language en_US
set langmenu=en_US.UTF-8
language en_US
set encoding=utf-8
filetype indent on

" 256 true color
" set t_Co=256
set termguicolors

" Indents
filetype indent on
set autoindent
set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=2

" Enable backspace under insert mode
set bs=2

" Word wraps
set cursorline
set wrap
set textwidth=80
set linebreak
set wrapmargin=2
set scrolloff=5
syntax enable 

" Status bar
set laststatus=2

" Error warnings
set noerrorbells
set visualbell

" Search
set showmatch
set hlsearch
set incsearch
set ignorecase
set smartcase

" No swap file
set noswapfile
set nobackup
set undofile

" Set menu
set wildmenu
set wildmode=longest:list,full

" Plugins with vim-plugged
call plug#begin('~/.vim/plugged')

" Automatically install missing plugins on startup
if !empty(filter(copy(g:plugs), '!isdirectory(v:val.dir)'))
  autocmd VimEnter * PlugInstall | q
endif

Plug 'itchyny/lightline.vim'
Plug 'Rigellute/shades-of-purple.vim'
Plug 'tpope/vim-fugitive'

call plug#end()

let g:shades_of_purple_lightline = 1
let g:lightline = {
  \ 'colorscheme': 'shades_of_purple',
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ], 
  \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
  \ },
  \ 'component_function': {
  \   'gitbranch': 'fugitive#head'
  \ },
  \ }
colorscheme shades_of_purple

