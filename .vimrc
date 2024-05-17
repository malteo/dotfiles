set nocompatible             " be iMproved

set termguicolors 

syntax enable                " enable syntax processing
colorscheme rosepine         " enable the theme
hi Normal guibg=NONE ctermbg=NONE

set tabstop=4                " number of visual spaces per TAB
set softtabstop=4            " number of spaces in tab when editing
set expandtab                " tabs are spaces

set number                   " show line numbers
set showcmd                  " show command in bottom bar
filetype indent on           " load filetype-specific indent files
set wildmenu                 " visual autocomplete for command menu
set lazyredraw               " redraw only when we need to.
set showmatch                " highlight matching [{()}]

set ignorecase
set smartcase
set incsearch                " search as characters are entered
set hlsearch                 " highlight matches

set foldenable               " enable folding
set foldlevelstart=10        " open most folds by default
set foldnestmax=10           " 10 nested fold max
set foldmethod=indent        " fold based on indent level

set nobackup
set noswapfile
set laststatus=2
set updatetime=100

if !has('nvim')
    set ttymouse=sgr
    set mouse=a
    set clipboard=unnamed,unnamedplus
endif

" space open/closes folds
nnoremap <space> za
" move vertically by visual line
nnoremap j gj
nnoremap k gk
" highlight last inserted text
nnoremap gV `[v`]
" make Y consistent with C and D
nnoremap Y y$
" move between splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" cycling through listed ~buffers~ tabs
nnoremap <Tab>   :tabnext<CR>
nnoremap <S-Tab> :tabprevious<CR>

" Keep undo history across sessions, by storing it in a file.
set undolevels=1000
if has('persistent_undo')
    silent !mkdir -p ~/.cache/vim/undo > /dev/null 2>&1
    set undodir=~/.cache/vim/undo
    set undofile
endif

" quick-scope
let g:qs_highlight_on_keys = ['f', 'F']

" lightline
let g:lightline = { 'colorscheme': 'rosepine' }

" Fern
let g:fern#default_hidden = 1
nnoremap <C-n> :Fern .<CR>
nnoremap <C-f> :Fern %:h -reveal=%:p<CR>

source ~/.vimrc.local
