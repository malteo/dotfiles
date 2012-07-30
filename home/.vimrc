" vim:fdm=marker
call pathogen#infect()

" Forget compatibility with Vi. Who cares.
set nocompatible

" Enable filetypes
filetype on
filetype plugin on
filetype indent on
syntax on

" Display current cursor position in lower right corner
set ruler

" Want a different map leader than \
let mapleader = ","

" Ever notice a slight lag after typing the leader key + command? This lowers
" the timeout.
set timeoutlen=500

" Switch between buffers without saving
set hidden

" Set font type and size. Depends on the resolution. Larger screens, prefer h15
set guifont=Inconsolata\ 12

" Tab stuff
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Show command in bottom right portion of the screen
set showcmd

" Show lines numbers
set number

" Indent stuff
set smartindent
set autoindent

" Always show the status line
set laststatus=2

" Better line wrapping
set wrap
set textwidth=79
"set colorcolumn=+1

" Set incremental searching"
set incsearch

" Highlight searching
set hlsearch

" Case insensitive search
set ignorecase
set smartcase

" Enable code folding
set foldenable
set foldlevel=99
set foldmethod=indent

" Hide mouse when typing
set mousehide

" Highlight current line
set cursorline

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

" Backup and swap files
set backupdir=~/.vim/_backup//    " where to put backup files.
set directory=~/.vim/_temp//      " where to put swap files.

" Easier window navigation
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Stupid shift key fixes
cmap W w
cmap WQ wq
cmap wQ wq
cmap Q q

" Visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv

" Move to last change
nnoremap gI `.

" Omnicomplete {{{
    inoremap <C-space> <C-x><C-o>

    autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
    autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
    autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
    autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
    autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
" }}}

" Plugins {{{
    " CtrlP
    set wildignore+=*/tmp/*,*.pyc,*.swp,*.zip
    let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'

    " NERDTree
    nmap <Leader>nn :NERDTreeToggle<CR>
    let NERDTreeIgnore     = ['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr', '^tags$']
    let NERDTreeQuitOnOpen = 1

    " Tagbar
    nmap <Leader>tt :TagbarToggle<CR>
    let g:tagbar_autofocus = 1

    " Solarized
    if has('gui_running')
        set background=light
    else
        set background=dark
    endif

    colorscheme solarized

    " Fugitive
    nmap <Leader>gs :Gstatus<CR>
    nmap <Leader>gd :Gdiff<CR>
" }}}

" Use local vimrc if available {{{
    if filereadable(expand("~/.vimrc.local"))
        source ~/.vimrc.local
    endif
" }}}
