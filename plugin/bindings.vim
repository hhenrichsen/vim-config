" Leader
let g:mapleader="\<Space>"
let g:maplocalleader = ';'
if(mod_keybind)
    call which_key#register('<Space>', "g:which_key_map")
    nnoremap <Space> <Nop>
    nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
    let g:which_key_map = {}
    " Files
    let g:which_key_map.f = {'name': '+File'}
    let g:which_key_map.f.w = 'Write'
    let g:which_key_map.f.r = 'Reload'
    let g:which_key_map.f.q = 'Quit'
    let g:which_key_map.f.Q = 'force Quit'
    let g:which_key_map.f.s = 'Save and quit'
    if(mod_ui)
        let g:which_key_map.f.t = 'toggle Tree'
        let g:which_key_map.f.f = 'Find file in tree'
    end
    " Buffer
    let g:which_key_map.b = {'name': '+Buffer'}
    let g:which_key_map.b.n = 'Next'
    let g:which_key_map.b.D = 'force Delete'
    let g:which_key_map.b.c = 'Clear highlighting'
    let g:which_key_map.b.p = 'Previous'
    let g:which_key_map.b.d = 'Delete'
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
    " Settings
    let g:which_key_map.s = {'name': '+Settings'}
    let g:which_key_map.s.e = 'Edit vimrc'
    let g:which_key_map.s.s = 'Source vimrc'
    let g:which_key_map.s['S'] = 'source Current file'
    let g:which_key_map.s.p = {'name': '+Plugins'}
    let g:which_key_map.s.p.i = 'Install plugins'
    let g:which_key_map.s.p.c = 'Clean plugins'
    let g:which_key_map.s.a = 'which_key_ignore'
    " Window
    let g:which_key_map.w = {'name': '+Window'}
    let g:which_key_map.w.v = 'split Vertically'
    let g:which_key_map.w.s = 'Split Horizontally'
    let g:which_key_map.w.x = 'eXit'
    let g:which_key_map.w.f = 'Focus'
    let g:which_key_map.w['='] = 'Balance'
    let g:which_key_map.w.l = 'Move Right'
    let g:which_key_map.w['L'] = 'Resize Right'
    let g:which_key_map.w.h = 'Move Left'
    let g:which_key_map.w['H'] = 'Resize Left'
    let g:which_key_map.w.j = 'Move Down'
    let g:which_key_map.w['J'] = 'Resize Down'
    let g:which_key_map.w.k = 'Move Up'
    let g:which_key_map.w['K'] = 'Resize Up'
    " Code
    let g:which_key_map.c = {'name': '+Code'}
    if(mod_completion)
        let g:which_key_map.c.r = 'Rename'
        let g:which_key_map.c.f = 'Format'
        let g:which_key_map.c.x = 'fiX'
        let g:which_key_map.c.g = {'name': '+Goto'}
        let g:which_key_map.c.g.d = 'Definition'
        let g:which_key_map.c.g.t = 'Type definition'
        let g:which_key_map.c.g.i = 'Implementation'
        let g:which_key_map.c.g.r = 'References'
        let g:which_key_map.c.d = 'Documentation'
    end
    if(mod_make)
        let g:which_key_map.c.m = 'Make'
        let g:which_key_map.c.M = 'Make'
    end
    let g:which_key_map.c.w = 'Clean Whitespace'
    " Fold
    let g:which_key_map.d = {'name': '+foLd'}
    let g:which_key_map.d.p = 'Paragraph'
    let g:which_key_map.d.b = 'Paragraph'
    let g:which_key_map.d.d = 'Delete'
    let g:which_key_map.d['D'] = 'Delete Recursive'
    " Visual
    let g:which_key_map.v = {'name': '+Visual'}
    let g:which_key_map.v.c = 'Clear highlighting'
    let g:which_key_map.v.s = 'toggle Spell check'
    if(mod_write)
        let g:which_key_map.v.p = 'check Passive grammar'
        let g:which_key_map.v.g = 'check Grammar'
    end
    if(mod_distraction)
        let g:which_key_map.v.d = 'toggle Distraction free mode'
        let g:which_key_map.v.l = 'toggle Limelight'
        let g:which_key_map.v.g = 'toggle Goyo'
    end
    " Git
    if(mod_git)
        let g:which_key_map.g = {'name': '+Git'}
        let g:which_key_map.g.s = 'Status'
        let g:which_key_map.g.c = 'Commit'
        let g:which_key_map.g.l = 'Log'
        let g:which_key_map.g.b = 'Blame'
        let g:which_key_map.g.h = 'stage Hunk'
        let g:which_key_map.g.w = 'Write (add|checkout)'
        let g:which_key_map.g.r = 'Read (checkout --)'
        let g:which_key_map.g.u = 'Upload (push)'
        let g:which_key_map.g.d = 'Download (pull)'
        let g:which_key_map.g['['] = 'Next Hunk'
        let g:which_key_map.g[']'] = 'Previous Hunk'
    end
end

" Files
nnoremap <Leader>fw :w<CR>
nnoremap <Leader>fr :e %<CR>
nnoremap <Leader>fq :q<CR>
nnoremap <Leader>fQ :q!<CR>
nnoremap <Leader>fs :wq<CR>
if(mod_ui)
    nnoremap <Leader>ft :NERDTreeToggle<CR>
    nnoremap <Leader>ff :NERDTreeFind<CR>
end

" Buffers
nnoremap <Leader>bn :bn<CR>
nnoremap <Leader>bp :bp<CR>
nnoremap <Leader>bd :bd<CR>
nnoremap <Leader>bD :bd!<CR>
nnoremap <Leader>bc :noh<CR>
if(mod_statusline)
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
end

" Vim
nnoremap <Leader>se :e $MYVIMRC<CR>
nnoremap <Leader>ss :so $MYVIMRC<CR>
nnoremap <Leader>sS :so %<CR>
nnoremap <Leader>spi :PlugInstall<CR>
nnoremap <Leader>spc :PlugClean<CR>

" Selection
nnoremap <Leader>sa ggVG

" Windows
nnoremap <Leader>wv :vs<CR>
nnoremap <Leader>ws :sp<CR>
nnoremap <Leader>wx :close<CR>
nnoremap <Leader>wf <C-w>o
nnoremap <Leader>w= <C-w>=
nnoremap <Leader>wl <C-w>l
nnoremap <Leader>wL <C-w>5>
nnoremap <Leader>wh <C-w>h
nnoremap <Leader>wH <C-w>5<
nnoremap <Leader>wj <C-w>j
nnoremap <Leader>wJ :resize +5<CR>
nnoremap <Leader>wk <C-w>k
nnoremap <Leader>wK :resize -5<CR>

if(mod_completion)
    nmap <Leader>cr <Plug>(coc-rename)
    xmap <Leader>cf <Plug>(coc-format-selected)
    nmap <Leader>cf <Plug>(coc-format-selected)
    nmap <Leader>cx <Plug>(coc-fix-current)
    nmap <silent> <Leader>cgd = <Plug>(coc-definition)
    nmap <silent> <Leader>cgt = <Plug>(coc-type-definition)
    nmap <silent> <Leader>cgi = <Plug>(coc-implementation)
    nmap <silent> <Leader>cgr = <Plug>(coc-references)
    nmap <silent> <Leader>cd :call <SID>show_documentation()<CR>
    imap <C-j> <Plug>(coc-snippets-expand-jump)
end
if(mod_make)
    nmap <Leader>cm :Neomake<CR>
    nmap <Leader>cM :Neomake!<CR>
end
nnoremap <Leader>cw :%s/\s\+$//<CR>

nnoremap <Leader>dp zfip
nnoremap <Leader>db zf{
nnoremap <Leader>dd zd
nnoremap <Leader>dD zD

nnoremap <Leader>vc :noh<CR>
nnoremap <Leader>vs :setlocal spell!<CR>
if(mod_distraction)
    nnoremap <Leader>vd :Limelight!!<CR>:Goyo<CR>
    nnoremap <Leader>vl :Limelight!!<CR>
    nnoremap <Leader>vg :Goyo<CR>
end
if(mod_write)
    nnoremap <Leader>vp :set syntax=better-writing<CR>
    nnoremap <Leader>vg :GrammarousCheck<CR>
end

if(mod_git)
    nnoremap <Leader>gs :Gstatus<CR>
    nnoremap <Leader>gc :Gcommit<CR>
    nnoremap <Leader>gl :Glog<CR>
    nnoremap <Leader>gb :Gblame<CR>
    nnoremap <Leader>gh :GitGutterStageHunk<CR>
    nnoremap <Leader>gw :Gwrite<CR>
    nnoremap <Leader>gr :Gread<CR>
    nnoremap <Leader>gu :Gpush<CR>
    nnoremap <Leader>gd :Gpull<CR>
    nnoremap <Leader>g] :GitGutterNextHunk<CR>
    nnoremap <Leader>g[ :GitGutterPrevHunk<CR>
end
