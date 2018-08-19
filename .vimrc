call plug#begin('~/.vim/plugged')

" Vim NerdTree
Plug 'scrooloose/nerdtree'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" CtrlP
Plug 'ctrlpvim/ctrlp.vim', { 'on': 'CtrlP' }

" Color Schemes
Plug 'flazz/vim-colorschemes'

" NERD Commenter
Plug 'scrooloose/nerdcommenter'

" vim-ripgrep
Plug 'jremmen/vim-ripgrep'

" Surround
Plug 'tpope/vim-surround'

" Syntastic
Plug 'vim-syntastic/syntastic'

" Javascript syntax highlighting
Plug 'pangloss/vim-javascript'

" JSX syntax highlighting
Plug 'mxw/vim-jsx'

" Autocomplete for code
Plug 'valloric/youcompleteme'

" HTML tags completion
Plug 'mattn/emmet-vim'

call plug#end()

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

:set tabstop=4              " Use 4 characters on tab press
:set shiftwidth=4           " Indent with 4 characters on enter press
:set expandtab              " Use space instead of tabs

" Display line number
:set number                 " Display line number

" Set color column
:set colorcolumn=120        " Set maximum code length
hi ColorColumn ctermbg=8    " Set the color for color column

:map <C-n> :NERDTree 
:map <C-p> :CtrlP

let g:ycm_server_python_interpreter = '/usr/bin/python'
