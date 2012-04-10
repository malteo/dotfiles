call pathogen#infect()
set autoindent
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set hlsearch

autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``

set background=dark
colorscheme solarized

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

inoremap <C-space> <C-x><C-o>
