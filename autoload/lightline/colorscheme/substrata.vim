" Dark colors be here.
let s:black_d = '#2e313d'
let s:red_d = '#cf8164'
let s:green_d = '#76a065'
let s:yellow_d = '#ab924c'
let s:blue_d = '#8296b0'
let s:magenta_d = '#a18daf'
let s:cyan_d = '#659ea2'
let s:white_d = '#b5b4c9'
" Light colors be here.
let s:black_l = '#5b5f71' 
let s:red_l = '#fe9f7c' 
let s:green_l = '#92c47e'
let s:yellow_l = '#d2b45f'
let s:blue_l = '#a0b9d8'
let s:magenta_l = '#c6aed7'
let s:cyan_l = '#7dc2c7'
let s:white_l = '#f0ecfe'

let s:bg = '#191c25' " Darkest Black.

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let g:lightline#colorscheme#substrata#palette = {}

let s:p.normal.left = [ [ s:black_d, s:cyan_d ], [ s:black_d, s:white_d ] ]
let s:p.normal.middle = [ [ s:white_l, s:black_d ] ]
let s:p.normal.right = [ [ s:black_d, s:cyan_d ], [ s:black_d, s:white_d ] ]
let s:p.normal.warning = [ [ s:black_d, s:yellow_l ] ]
let s:p.normal.error = [ [ s:black_d, s:red_l ] ]

let s:p.inactive.left =  [ [ s:white_d, s:black_l ], [ s:black_l, s:black_d ] ]
let s:p.inactive.middle = [ [ s:black_l, s:black_d ] ]
let s:p.inactive.right = [ [ s:white_d, s:black_l ], [ s:black_l, s:black_d ] ]

let s:p.insert.left = [ [ s:black_d, s:green_l ], [ s:black_d, s:white_d ] ]
let s:p.insert.middle = [ [ s:white_l, s:black_d ] ]
let s:p.insert.right = [ [ s:black_d, s:green_l ], [ s:black_d, s:white_d ] ]

let s:p.visual.left = [ [ s:black_d, s:yellow_l ], [ s:black_d, s:white_d ] ]
let s:p.visual.middle = [ [ s:white_l, s:black_d ] ]
let s:p.visual.right = [ [ s:black_d, s:yellow_l ], [ s:black_d, s:white_d ] ]

let s:p.tabline.left = [ [ s:black_d, s:cyan_d ], [ s:black_d, s:white_d ] ]
let s:p.tabline.middle = [ [ s:white_l, s:black_d ] ]
let s:p.tabline.right = [ [ s:black_d, s:cyan_d ], [ s:black_d, s:white_d ] ]
let s:p.tabline.tabsel = [ [ s:black_d, s:white_d ] ]

let g:lightline#colorscheme#substrata#palette = lightline#colorscheme#fill(s:p)
