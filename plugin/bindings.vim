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
let g:which_key_map.f.s = 'Save and Quit'
nnoremap <Leader>fs :wq<CR>

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
let g:which_key_map.b['1'] = 'which_key_ignore'
let g:which_key_map.b['2'] = 'which_key_ignore'
let g:which_key_map.b['3'] = 'which_key_ignore'
let g:which_key_map.b['4'] = 'which_key_ignore'
let g:which_key_map.b['5'] = 'which_key_ignore'
let g:which_key_map.b['6'] = 'which_key_ignore'
let g:which_key_map.b['7'] = 'which_key_ignore'
let g:which_key_map.b['8'] = 'which_key_ignore'
let g:which_key_map.b['9'] = 'which_key_ignore'
let g:which_key_map.b['0'] = 'which_key_ignore'
nmap <Leader>b1 <Plug>lightline#bufferline#go(1)
nmap <Leader>b2 <Plug>lightline#bufferline#go(2)
nmap <Leader>b3 <Plug>lightline#bufferline#go(3)
nmap <Leader>b4 <Plug>lightline#bufferline#go(4)
nmap <Leader>b5 <Plug>lightline#bufferline#go(5)
nmap <Leader>b6 <Plug>lightline#bufferline#go(6)
nmap <Leader>b7 <Plug>lightline#bufferline#go(7)
nmap <Leader>b8 <Plug>lightline#bufferline#go(8)
nmap <Leader>b9 <Plug>lightline#bufferline#go(9)
nmap <Leader>b0 <Plug>lightline#bufferline#go(10)

" Vim
let g:which_key_map.s = {'name': '+Settings'}
let g:which_key_map.s.e = 'Edit vimrc'
nnoremap <Leader>se :e $MYVIMRC<CR>
let g:which_key_map.s.s = 'Source vimrc'
nnoremap <Leader>ss :so $MYVIMRC<CR>
let g:which_key_map.s['S'] = 'source Current file'
nnoremap <Leader>sS :so %<CR>
let g:which_key_map.s.p = {'name': '+Plugins'}
let g:which_key_map.s.p.i = 'Install plugins'
nnoremap <Leader>spi :PlugInstall<CR>
let g:which_key_map.s.p.c = 'Clean plugins'
nnoremap <Leader>spc :PlugClean<CR>

" Selection
let g:which_key_map.s.a = 'which_key_ignore'
nnoremap <Leader>sa ggVG

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

let g:which_key_map.v = {'name': '+Visual'}
let g:which_key_map.v.c = 'Clear highlighting'
nnoremap <Leader>vc :noh<CR>
let g:which_key_map.v.s = 'toggle Spell check'
nnoremap <Leader>vs :setlocal spell!<CR>
let g:which_key_map.v.d = 'toggle Distraction free mode'
nnoremap <Leader>vd :Limelight!!<CR>:Goyo<CR>
let g:which_key_map.v.l = 'toggle Limelight'
nnoremap <Leader>vl :Limelight!!<CR>
let g:which_key_map.v.g = 'toggle Goyo'
nnoremap <Leader>vg :Goyo<CR>

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
