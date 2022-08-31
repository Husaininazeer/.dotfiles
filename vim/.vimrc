""""""""""""""""""""""""""""""""""""""""""""""""""
" Contents
" - General
" - vim-plug plugins
" - Plugin configs
" - Vim UI
""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""" General 
""""""""""""""""""""""""""""""""""""""""""""""""""


set history=500
set autoread

" setting tab widths
set tabstop=2
set shiftwidth=2
set expandtab

" make searching easier
set ignorecase
set smartcase


" Leader key mapping
let mapleader = ","
nmap <leader>w :w!<cr>

" buffer keybindings (with leader key)
map <leader>bd :Bclose<cr>:tabclose<cr>gT
map <leader>ba :bufdo bd<cr>
map <leader>n :bnext<cr>
map <leader>p :bprevious<cr>


""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""" vim-plug plugins
""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin()

  " surrounding things in vim with () and the sort

  Plug 'tpope/vim-surround'

  " js/react/gql syntax highlighting and indentation

  Plug 'yuezk/vim-js'
  Plug 'maxmellon/vim-jsx-pretty'

  Plug 'jparise/vim-graphql'

  " atom like one dark theme

  Plug 'sonph/onehalf', { 'rtp': 'vim' }

  " NERDTree 

  Plug 'preservim/nerdtree'

  " Ale (linter)
  Plug 'dense-analysis/ale'

call plug#end()


""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""" Plugin configs
""""""""""""""""""""""""""""""""""""""""""""""""""


" NERDTree configs

let g:NERDTreeWinPos = "left"
let NERDTreeShowHidden=1 
let NERDTreeIgnore = ['\.pyc$', '__pycache__', 'node_modules']
let g:NERDTreeWinSize=35
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>

" Ale config

let g:ale_fixers = {
 \ 'javascript': ['prettier', 'eslint'],
 \ 'javascriptreact': ['prettier', 'eslint'],
 \ }
let g:ale_fix_on_save = 1


""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""" Vim UI and theming
""""""""""""""""""""""""""""""""""""""""""""""""""

" Scrolloff - change to 999 to stop cursor moving
set so=999

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


