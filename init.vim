" Modular setup.
if has('win32') || has('win64')
    set rtp+=~/AppData/Local/nvim/modules
else
    set rtp+=~/.config/nvim/modules
end

" Initialize plug.
call plug#begin('~/.vim/plugged')

" Initializes some variables.
runtime 00-init.vim

" Completion.
runtime completion.vim

" Distraction-free mode.
runtime distraction.vim

" File finder.
runtime files.vim

" Ghosttext support.
runtime ghost.vim

" Git helpers.
runtime git.vim

" HTML Utilities
runtime html.vim

" Keybind explanations.
runtime keybind.vim

" Support for many languages.
runtime language.vim

" LaTeX integration.
runtime latex.vim

" Automake.
runtime make.vim

" Status lines.
runtime statusline.vim

" Ctags utilities.
runtime tags.vim

" Testing utilities.
runtime test.vim

" Visual themes.
runtime theme.vim

" Time-tracking.
runtime time.vim

" UI changes/additions.
runtime ui.vim

" Basic tweaks/changes.
runtime util.vim

" Writing utilities.
runtime write.vim

Plug 'arzg/vim-substrata'

call plug#end()

" Color Fix

if $COLORTERM is "truecolor"
    set termguicolors
end

"
" Plugin configuration.
"
if(mod_completion)
    set timeoutlen=500

    autocmd CursorHold * silent call CocActionAsync('highlight')

    let g:echodoc#enable_at_startup = 1
    let g:echodoc#type = "floating"
end

if(mod_distraction)
    let g:goyo_width = 81
end

if(mod_latex)
    set conceallevel=2
    let g:tex_conceal="abdgm"
end

if(mod_make)
    call neomake#configure#automake('w')
end

if(mod_statusline)
    set showtabline=2
    let g:lightline#bufferline#show_number  = 2
    let g:lightline#bufferline#unnamed      = '[No Name]'
    let g:lightline#bufferline#filename_modifier = ':t'
    let g:lightline#bufferline#modified = '  '
    let g:lightline#bufferline#read_only = ' '
    let g:lightline#bufferline#number_map = {
                \ 0: '⁰', 1: '¹', 2: '²', 3: '³', 4: '⁴',
                \ 5: '⁵', 6: '⁶', 7: '⁷', 8: '⁸', 9: '⁹'}

    let g:lightline = {
                \ 'colorscheme': 'substrata',
                \ 'tabline': {'left': [[ 'bufinfo', 'buffers' ]], 'right': [[ 'close' ]]},
                \ 'active': {
                \   'left': [ [ 'mode', 'paste' ],
                \             [ 'charvalue', 'gitbranch', 'readonly', 'filename', 'modified' ] ]
                \ },
                \ 'component': {
                \   'lineinfo': ' %3l:%-2v',
                \   'charvalue': ' %B',
                \   'bufinfo': '﬘ %n'
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
end

if(mod_test)
    let g:ale_lint_on_text_changed = 'never'
    let g:ale_lint_on_enter = 0
end

if(mod_util)
    let g:pear_tree_smart_openers = 1
    let g:pear_tree_smart_closers = 1
    let g:pear_tree_smart_backspace = 1
end

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
colorscheme substrata
highlight Comment cterm=italic

" Set the spell check language, but hide spell checking by default.
set spelllang=en_us
set nospell
