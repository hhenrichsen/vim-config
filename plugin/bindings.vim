" Leader
let g:mapleader="\<Space>"
let g:maplocalleader = ','
call which_key#register('<Space>', "g:which_key_map")
nnoremap <Space> <Nop>
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>

let g:which_key_map = {}

" Files
let g:which_key_map.f = {'name': '+File'}
let g:which_key_map.f.w = 'Write'
nnoremap <Leader>fw :w<CR>
let g:which_key_map.f.r = 'Reload'
nnoremap <Leader>fr :e %<CR>
let g:which_key_map.f.q = 'Quit'
nnoremap <Leader>fq :q<CR>
let g:which_key_map.f.Q = 'force Quit'
nnoremap <Leader>fQ :q!<CR>

" Buffers
let g:which_key_map.b = {'name': '+Buffer'}
let g:which_key_map.b.n = 'Next'
nnoremap <Leader>bn :bn<CR>
let g:which_key_map.b.n = 'Previous'
nnoremap <Leader>bp :bp<CR>
let g:which_key_map.b.d = 'Delete'
nnoremap <Leader>bd :bd<CR>
let g:which_key_map.b.D = 'force Delete'
nnoremap <Leader>bD :bd!<CR>
let g:which_key_map.b.c = 'Clear highlighting'
nnoremap <Leader>bc :noh<CR>

" Selection
let g:which_key_map.s = {'name': '+Selection'}
let g:which_key_map.s.a = 'Select All'
nnoremap <Leader>sa ggVG

" Vim
let g:which_key_map.v = {'name': '+Vim'}
let g:which_key_map.v.e = 'Edit vimrc'
nnoremap <Leader>ve :e $MYVIMRC<CR>
let g:which_key_map.v.s = 'Source vimrc'
nnoremap <Leader>vs :so $MYVIMRC<CR>
let g:which_key_map.v['S'] = 'source Current file'
nnoremap <Leader>vS :so %<CR>
let g:which_key_map.v.p = {'name': '+Plugins'}
let g:which_key_map.v.p.i = 'Install plugins'
nnoremap <Leader>vpi :PlugInstall<CR>
let g:which_key_map.v.p.c = 'Clean plugins'
nnoremap <Leader>vpc :PlugClean<CR>

" Windows
let g:which_key_map.w = {'name': '+Window'}
let g:which_key_map.w.v = 'split Vertically'
nnoremap <Leader>wv :vs<CR>
let g:which_key_map.w.s = 'Split Horizontally'
nnoremap <Leader>ws :sp<CR>
let g:which_key_map.w.x = 'eXit'
nnoremap <Leader>wx :close<CR>
let g:which_key_map.w.f = 'Focus'
nnoremap <Leader>wf <C-w>o
let g:which_key_map.w['='] = 'Balance'
nnoremap <Leader>w= <C-w>=
let g:which_key_map.w.l = 'Move Right'
nnoremap <Leader>wl <C-w>l
let g:which_key_map.w['L'] = 'Resize Right'
nnoremap <Leader>wL <C-w>5>
let g:which_key_map.w.h = 'Move Left'
nnoremap <Leader>wh <C-w>h
let g:which_key_map.w['H'] = 'Resize Left'
nnoremap <Leader>wH <C-w>5<
let g:which_key_map.w.j = 'Move Down'
nnoremap <Leader>wj <C-w>j
let g:which_key_map.w['J'] = 'Resize Down'
nnoremap <Leader>wJ :resize +5<CR>
let g:which_key_map.w.k = 'Move Up'
nnoremap <Leader>wk <C-w>k
let g:which_key_map.w['K'] = 'Resize Up'
nnoremap <Leader>wK :resize -5<CR>

let g:which_key_map.c = {'name': '+Code'}
let g:which_key_map.c.r = 'Rename'
nmap <Leader>cr <Plug>(coc-rename)
let g:which_key_map.c.f = 'Format'
xmap <Leader>cf <Plug>(coc-format-selected)
nmap <Leader>cf <Plug>(coc-format-selected)
let g:which_key_map.c.x = 'fiX'
nmap <Leader>cx <Plug>(coc-fix-current)
let g:which_key_map.c.g = {'name': '+Goto'}
let g:which_key_map.c.g.d = 'Definition'
nmap <silent> <Leader>cgd = <Plug>(coc-definition)
let g:which_key_map.c.g.t = 'Type definition'
nmap <silent> <Leader>cgt = <Plug>(coc-type-definition)
let g:which_key_map.c.g.i = 'Implementation'
nmap <silent> <Leader>cgi = <Plug>(coc-implementation)
let g:which_key_map.c.g.r = 'References'
nmap <silent> <Leader>cgr = <Plug>(coc-references)
let g:which_key_map.c.d = 'Documentation'
nmap <silent> <Leader>cd :call <SID>show_documentation()<CR>
let g:which_key_map.c.w = 'Clean Whitespace'
nnoremap <Leader>cw :%s/\s\+$//<CR>

let g:which_key_map.d = {'name': '+foLd'}
let g:which_key_map.d.p = 'Paragraph'
nnoremap <Leader>dp zfip
let g:which_key_map.d.b = 'Paragraph'
nnoremap <Leader>db zf{
let g:which_key_map.d.d = 'Delete'
nnoremap <Leader>dd zd
let g:which_key_map.d['D'] = 'Delete Recursive'
nnoremap <Leader>dD zD

let g:which_key_map.h = {'name': '+Highlighting'}
let g:which_key_map.h.c = 'Clear highlighting'
nnoremap <Leader>hc :noh<CR>
let g:which_key_map.h.s = 'toggle Spell check'
nnoremap <Leader>hs :setlocal spell!<CR>

let g:which_key_map.g = {'name': '+Git'}
let g:which_key_map.g.s = 'Status'
nnoremap <Leader>gs :Gstatus<CR>
let g:which_key_map.g.c = 'Commit'
nnoremap <Leader>gc :Gcommit<CR>
let g:which_key_map.g.l = 'Log'
nnoremap <Leader>gl :Glog<CR>
let g:which_key_map.g.b = 'Blame'
nnoremap <Leader>gb :Gblame<CR>
let g:which_key_map.g.w = 'Write (add|checkout)'
nnoremap <Leader>gw :Gwrite<CR>
let g:which_key_map.g.r = 'Read (checkout --)'
nnoremap <Leader>gr :Gread<CR>
let g:which_key_map.g.u = 'Upload (push)'
nnoremap <Leader>gu :Gpush<CR>
let g:which_key_map.g.d = 'Download (pull)'
nnoremap <Leader>gd :Gpull<CR>
