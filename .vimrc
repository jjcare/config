call pathogen#infect() 
colo torte
syntax on
filetype plugin indent on
set laststatus=2

if !has('gui_running')
    set t_Co=256
endif

let g:Powerline_symbols = 'fancy'

let g:lightline = {
      \ 'colorscheme': 'torte',
      \ 'component': {
      \   'readonly': '%{&readonly?"⭤":""}',
      \ },
      \ 'separator': { 'left': '⮀', 'right': '⮂' },
      \ 'subseparator': { 'left': '⮁', 'right': '⮃' }
      \ }

autocmd! bufwritepost .vimrc source %

let mapleader = ","
nnoremap Q q
nnoremap ; :

" map <leader>q and <leader>w to buffer prev/next buffer
noremap <leader>q :bp<CR>
noremap <leader>w :bn<CR>

" windows like clipboard
" yank to and paste from the clipboard without prepending "* to commands
let &clipboard = has('unnamedplus') ? 'unnamedplus' : 'unnamed'
" map c-x and c-v to work as they do in windows, only in insert mode
vm <c-x> "+x
vm <c-c> "+y
cno <c-v> <c-r>+
exe 'ino <script> <C-V>' paste#paste_cmd['i']

" save with c-s
nmap <c-s> :w<CR>
imap <c-s> <ESC>:w<CR>a

set guifont=Source\ Code\ Pro

set incsearch
set hlsearch
" use ESC to remove search highlight
"nnoremap <esc> :noh<return><esc>

" indentation
set expandtab     " use spaces instead of tabs
set autoindent    " autoindent bsed on line above, works most of the time
set shiftwidth=4  " when reading, tabs are 4 spaces
set softtabstop=4 " in insert mode, tabs are 4 spaces




