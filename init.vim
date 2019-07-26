" Initialize plug.
call plug#begin('~/.vim/plugged')

" Color schemes are the most important, and Nord is the best one.
Plug 'arcticicestudio/nord-vim'

" Tim Pope's Utilities.
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-abolish'

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

set showtabline=2
let g:lightline#bufferline#show_number  = 2
let g:lightline#bufferline#unnamed      = '[No Name]'
let g:lightline#bufferline#filename_modifier = ':t'
let g:lightline#bufferline#modified = ' '
let g:lightline#bufferline#read_only = ' '
let g:lightline#bufferline#number_map = {
      \ 0: '⁰', 1: '¹', 2: '²', 3: '³', 4: '⁴',
      \ 5: '⁵', 6: '⁶', 7: '⁷', 8: '⁸', 9: '⁹'}

let g:lightline = {
      \ 'colorscheme': 'nord',
      \ 'tabline': {'left': [['buffers']], 'right': [['close']]},
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component': {
      \   'lineinfo': ' %3l:%-2v',
      \ },
      \ 'component_function': {
      \   'readonly': 'LightlineReadonly',
      \   'fugitive': 'LightlineFugitive'
      \ },
      \ 'component_expand': {'buffers': 'lightline#bufferline#buffers'},
      \ 'component_type': {'buffers': 'tabsel'},
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }

function! LightlineReadonly()
    return &readonly ? '⭤' : ''
endfunction
function! LightlineFugitive()
    if exists('*fugitive#head')
        let branch = fugitive#head()
        return branch !=# '' ? '⭠ '.branch : ''
    endif
    return ''
endfunction

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
set mouse=a

" Set our color scheme.
colorscheme nord

" Set the spell check language, but hide spell checking by default.
set spelllang=en_us
set nospell

"
" General bindings.
" Moved to plugin/bindings.vim
"
