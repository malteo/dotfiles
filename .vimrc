set nocompatible             " be iMproved

set termguicolors 

syntax enable                " enable syntax processing
colorscheme dracula          " enable the theme
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

set incsearch                " search as characters are entered
set hlsearch                 " highlight matches

set foldenable               " enable folding
set foldlevelstart=10        " open most folds by default
set foldnestmax=10           " 10 nested fold max
set foldmethod=indent        " fold based on indent level

set ttymouse=sgr
set mouse=a

set nobackup
set noswapfile
set laststatus=2
set updatetime=100
set clipboard=unnamed,unnamedplus

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
" cycling through listed buffers
nnoremap <Tab>   :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

" quick-scope
let g:qs_highlight_on_keys = ['f', 'F']

" airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" lightline
"let g:rigel_lightline = 1
"let g:lightline = { 'colorscheme': 'nord' }

" netrw
let g:netrw_altfile = 1
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
map <C-n> :Lexplore<CR>

" Yoink
"nmap <c-n> <plug>(YoinkPostPasteSwapBack)
"nmap <c-p> <plug>(YoinkPostPasteSwapForward)
"map p <plug>(YoinkPaste_p)
"nmap P <plug>(YoinkPaste_P)

" get the 2-space YAML as the default when hit carriage return after the colon
"autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
