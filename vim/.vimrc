""""""""""""""""""""""""""""""""""""""""""""""""""
" Contents
" - General
" - vim-plug plugins
" - Plugin configs
" - Vim UI
" - Helper functions
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


" smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

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

  " Plug 'sonph/onehalf', { 'rtp': 'vim' }
  Plug 'sainnhe/sonokai'

  " NERDTree 

  Plug 'preservim/nerdtree'

  " Ale (linter)
  Plug 'dense-analysis/ale'

  " alignment for md
  Plug 'junegunn/vim-easy-align'

  " fugitive - git wrapper for vim
  Plug 'tpope/vim-fugitive'

call plug#end()


""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""" Plugin configs
""""""""""""""""""""""""""""""""""""""""""""""""""


" NERDTree configs

let g:NERDTreeWinPos = "left"
let NERDTreeShowHidden=1 
let NERDTreeIgnore = ['\.pyc$', '__pycache__', 'node_modules']
let g:NERDTreeWinSize=40

map <leader>nn :NERDTreeToggle<cr>

" Ale config

let g:ale_fix_on_save = 1
let g:ale_lint_on_save = 1
let g:ale_sign_error = '●'
let g:ale_sign_warning = '.'

let g:ale_fixers = {
 \ 'javascript': ['prettier', 'eslint'],
 \ 'typescript': ['prettier', 'eslint'],
 \ 'javascriptreact': ['prettier', 'eslint'],
 \ 'typescriptreact': ['prettier', 'eslint'],
 \ 'bash': ['prettier', 'eslint'],
 \ }

let g:ale_linters = {
\   'markdown':      ['mdl'],
\}

" vim-easy-align config

xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)


""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""" Vim UI and theming
""""""""""""""""""""""""""""""""""""""""""""""""""

" Scrolloff - change to 999 to stop cursor moving
set so=999

" highlight the current line
set cursorline

" turn on number on the side
set nonumber

" set the command line height to lower
set cmdheight=1


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
  colorscheme sonokai
  catch
endtry

" status line
set laststatus=2

" format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

" theming for airline or lightline (uncomment)
" let g:airline_theme='onehalfdark'
" lightline
" let g:lightline = { 'colorscheme': 'onehalfdark' }

""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""" Helper functions
""""""""""""""""""""""""""""""""""""""""""""""""""

" returns true if paste mode is enabled

function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction

