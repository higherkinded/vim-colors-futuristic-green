" Maintainer: higherkinded <hknd@tuta.io>
" Version:    1.0.0

set background=dark

hi clear

if exists('syntax on')
    syntax reset
endif

let g:colors_name = 'futuristic_green'

let s:nil = {}

func! s:hi(what, fg, ...)
    let l:exestring = 'hi ' . a:what . ' '

    let l:dohi = 0
    let l:bg = get(a:, 1, s:nil)
    let l:st = get(a:, 2, s:nil)

    if type(a:fg) == type('')
        let l:exestring .= ' guifg=' . a:fg . ' '
        let l:dohi = 1
    endif

    if type(l:bg) == type('')
        let l:exestring .= ' guibg=' . l:bg . ' '
        let l:dohi = 1
    endif

    if type(l:st) == type('')
        let l:exestring .= ' gui=' . l:st . ' '
        let l:dohi = 1
    endif

    if l:dohi
        exe l:exestring
    endif
endf

let s:bold = 'bold'
let s:norm = 'none'
let s:undr = 'underline'

let s:bg   = '#011913'
let s:fg   = '#55ad96'
let s:bfg  = '#69ceb4'
let s:fnt  = '#224d42'
let s:vfnt = '#022d22'
let s:grn  = '#3fbf5c'
let s:blu  = '#188caa'
let s:red  = '#a5366a'
let s:redb = '#b83975'
let s:cyan = '#14a998'
let s:yel  = '#a1b74d'

call s:hi('Normal',         s:fg,   s:bg)
call s:hi('LineNr',         s:fnt,  s:bg)
call s:hi('NonText',        s:bg,   s:nil)
call s:hi('Comment',        s:fnt,  s:nil)
call s:hi('CursorLine',     s:nil,  s:vfnt)
call s:hi('CursorColumn',   s:nil,  s:vfnt)
call s:hi('ColorColumn',    s:nil,  s:vfnt)
call s:hi('CursorLineNr',   s:bfg,  s:nil, s:norm)
call s:hi('Constant',       s:grn)
call s:hi('Number',         s:cyan)
call s:hi('Special',        s:cyan)
call s:hi('Delimiter',      s:cyan)
call s:hi('Exception',      s:red)
call s:hi('Identifier',     s:cyan)
call s:hi('Function',       s:bfg)
call s:hi('Statement',      s:bfg,  s:nil, s:norm)
call s:hi('Type',           s:cyan, s:nil, s:norm)
call s:hi('PreProc',        s:cyan)
call s:hi('String',         s:grn)
call s:hi('Todo',           s:red,  s:bg)
call s:hi('Ignore',         s:fnt,  s:bg)
call s:hi('DiffDelete',     s:red,  s:bg)
call s:hi('DiffAdd',        s:grn,  s:bg)
call s:hi('DiffChange',     s:yel,  s:bg)
call s:hi('DiffText',       s:fg,   s:bg)
call s:hi('Cursor',         s:bg,   s:bfg)
call s:hi('Visual',         s:nil,  s:vfnt)
call s:hi('FoldColumn',     s:fg,   s:bg)
call s:hi('SignColumn',     s:fg,   s:bg)
call s:hi('Folded',         s:bg,   s:fnt)
call s:hi('Search',         s:bg,   s:grn)
call s:hi('IncSearch',      s:bg,   s:grn)
call s:hi('ModeMsg',        s:fg,   s:bg)
call s:hi('SpellCap'  ,     s:bg,   s:yel,  s:norm)
call s:hi('SpellLocal',     s:bg,   s:yel,  s:norm)
call s:hi('SpellRare',      s:bg,   s:yel,  s:norm)
call s:hi('WarningMsg',     s:bg,   s:yel,  s:norm)
call s:hi('ALEWarning',     s:bg,   s:yel,  s:norm)
call s:hi('ALEWarningSign', s:bg,   s:yel)
call s:hi('ErrorMsg',       s:red,  s:bg,   s:norm)
call s:hi('Error',          s:red,  s:bg,   s:norm)
call s:hi('SpellBad',       s:bg,   s:red,  s:norm)
call s:hi('ALEError',       s:bg,   s:red,  s:norm)
call s:hi('ALEErrorSign',   s:bg,   s:redb)
call s:hi('MatchParen',     s:bg,   s:grn)
call s:hi('SpecialKey',     s:cyan)
call s:hi('Title',          s:grn,  s:nil)
call s:hi('Directory',      s:cyan, s:nil)
call s:hi('Sign',           s:yel,  s:nil)
call s:hi('WildMenu',       s:yel,  s:nil)
call s:hi('PmenuSel',       s:fnt,  s:bfg)
call s:hi('PmenuSbar',      s:fg,   s:fnt)
call s:hi('Pmenu',          s:fg,   s:fnt)
call s:hi('PmenuThumb',     s:fg,   s:bfg)
call s:hi('Tabline',        s:fg,   s:fnt,  s:norm)
call s:hi('TablineFill',    s:bg,   s:fg,   s:norm)
call s:hi('TablineSel',     s:fg,   s:vfnt, s:norm)
call s:hi('VertSplit',      s:fnt,  s:bg,   s:norm)
call s:hi('ModeMsg',        s:fnt,  s:nil,  s:norm)
call s:hi('MoreMsg',        s:fnt,  s:nil,  s:norm)
call s:hi('StatusLine',     s:bg,   s:bfg,  s:norm)
call s:hi('StatusLineNC',   s:bg,   s:fg,   s:norm)
call s:hi('Whitespace',     s:fnt)
