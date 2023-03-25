set number
set relativenumber

set expandtab
set shiftwidth=4
set tabstop=4

" NetRW
let g:netrw_banner=0
let g:netrw_liststyle=0
let g:netrw_browse_split=2
let g:netrw_altv=1
let g:netrw_winsize=15
let g:netrw_keepdir=0

" Airline
let g:airline_powerline_fonts=1

call plug#begin()

    " Appearance
"     Plug 'vim-airline/vim-airline'

    " Utilities
    Plug 'sheerun/vim-polyglot'

call plug#end()
