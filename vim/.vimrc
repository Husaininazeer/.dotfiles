
""""""""""""""""""""""""""""""""""""""""""""""""""""
" Contents
" - General
" - VIM UI
" - vim-plug plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""
" General 
""""""""""""""""""""""""""""""""""""""""""""""""""""

set history=500
set autoread

let mapleader = ","
nmap <leader>w :w!<cr>
 

""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-plug plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin()

" surrounding things in vim with () and the sort
Plug 'tpope/vim-surround'

" js/react/gql syntax highlighting and indentation
Plug 'pangloss/vim-javascript'
Plug 'peitalin/vim-jsx-typescript'
Plug 'jparise/vim-graphql'

" atom like one dark theme
Plug 'joshdick/onedark.vim'

call plug#end()


""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM UI     
""""""""""""""""""""""""""""""""""""""""""""""""""""

" Scrolloff - change to 999 to stop cursor moving
set so=10

" turn on number on the side
set number
 
" show current position in status bar 
set ruler

" higlight search results
set hlsearch

" enable syntax highlighting
syntax on

" use onedark colorscheme
try
    colorscheme onedark
catch
endtry

