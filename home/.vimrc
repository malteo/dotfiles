call pathogen#infect()

"Forget compatibility with Vi. Who cares!
set nocompatible

"Enable filetypes
filetype on
filetype plugin on
filetype indent on
syntax on

"Display current cursor position in lower right corner
set ruler

"Switch between buffers without saving
set hidden

"Set the color scheme
set background=dark
colorscheme solarized

"Tab stuff
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4

"Show command in bottom right portion of the screen
set showcmd

"Show lines numbers
set number

"Prefer relative line numbering?
"set relativenumber"

"Indent stuff
set smartindent
set autoindent

"Always show the status line
set laststatus=2

"Prefer a slightly higher line height
"set linespace=3

"Better line wrapping
set wrap
set textwidth=99
set formatoptions=qrn1

"Set incremental searching"
set incsearch

"Highlight searching
set hlsearch

" case insensitive search
set ignorecase
set smartcase

"Enable code folding
set foldenable

"Hide mouse when typing
set mousehide

"Highlight current line
set cursorline

autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
