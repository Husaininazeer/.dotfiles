
""""""""""""""""""""""""""""""""""""""""""""""""""
" Contents
" - General
" - vim-plug plugins
" - Plugin configs
" - VIM UI
""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""" General 
""""""""""""""""""""""""""""""""""""""""""""""""""

set history=500
set autoread

" setting tab widths
set tabstop=4
set shiftwidth=4
set expandtab


" Leader key mapping
let mapleader = ","
nmap <leader>w :w!<cr>
 

""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""" vim-plug plugins
""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin()

" surrounding things in vim with () and the sort
Plug 'tpope/vim-surround'

" js/react/gql syntax highlighting and indentation
Plug 'pangloss/vim-javascript'
Plug 'peitalin/vim-jsx-typescript'
Plug 'jparise/vim-graphql'

" atom like one dark theme
Plug 'sonph/onehalf', { 'rtp': 'vim' }

" NERDTree 
Plug 'preservim/nerdtree'


call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""" Plugin configs
""""""""""""""""""""""""""""""""""""""""""""""""""


" NERDTree configs
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=1 
let NERDTreeIgnore = ['\.pyc$', '__pycache__', 'node_modules']
let g:NERDTreeWinSize=35
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""" VIM UI and theming
""""""""""""""""""""""""""""""""""""""""""""""""""

" Scrolloff - change to 999 to stop cursor moving
set so=10

" highlight the current line
set cursorline

" turn on number on the side
set number
 
" show current position in status bar 
set ruler

" higlight search results
set hlsearch

" enable syntax highlighting
syntax on

" 256 colours set for terminal
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" use onedark colorscheme
try
    colorscheme onehalfdark
catch
endtry

" theming for airline or lightline (uncomment)
" let g:airline_theme='onehalfdark'
" lightline
" let g:lightline = { 'colorscheme': 'onehalfdark' }


