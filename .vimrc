" .vimrc 241222
call plug#begin()

Plug 'rust-lang/rust.vim'
Plug 'voldikss/vim-floaterm'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'embark-theme/vim', { 'as': 'embark', 'branch': 'main' }

call plug#end()

let g:floaterm_keymap_toggle = '<F12>'

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

" Pick a leader key
let mapleader = " "

" enable all Python syntax highlighting features
let python_highlight_all = 1

" Security
set modelines=0
set undofile
" Show line numbers
set number

" Show file stats
set ruler

" Encoding
set encoding=utf-8

" Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=4
set shiftwidth=4
set softtabstop=2
set expandtab
set noshiftround
set autoindent
set cursorline

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd
set showmatch

" Searching with highlight
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
" noh - no highlight
map <esc> :noh <CR>

" Color scheme (terminal)
colorscheme embark
