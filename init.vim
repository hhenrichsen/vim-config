" Initialize plug.
call plug#begin('~/.vim/plugged')

" Color schemes are the most important, and Nord is the best one.
Plug 'arcticicestudio/nord-vim'

" Tim Pope's Utilities.
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'

" Completion.
Plug 'neoclide/coc.nvim'

" Distraction-free writing.
Plug 'junegunn/goyo.vim'

" Status line
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'

" Keybind menu.
Plug 'liuchengxu/vim-which-key'

" Improve Ctrl-A.
Plug 'Konfekt/vim-CtrlXA'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

call plug#end()

"
" Plugin configuration.
"

let g:lightline = {
      \ 'colorscheme': 'nord',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }
let g:lightline.tabline          = {'left': [['buffers']], 'right': [['close']]}
let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type   = {'buffers': 'tabsel'}

set timeoutlen=500

autocmd CursorHold * silent call CocActionAsync('highlight')
"
" Vim configuration.
"

set autochdir

set hidden

set nobackup
set nowritebackup

set cmdheight=2

set updatetime=300

set shortmess+=c

set signcolumn=yes

" Hybrid numbers.
set number
set relativenumber

" Default tabs to 4 spaces.
set tabstop=4
set expandtab
set shiftwidth=4

" Leave us some space on either side of the screen.
set scrolloff=5

" Allow clicking.
set mouse

" Set our color scheme.
colorscheme nord

" Set the spell check language, but hide spell checking by default.
set spelllang=en_us
set nospell

"
" General bindings.
" Moved to plugin/bindings.vim
"
