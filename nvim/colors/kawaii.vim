" Nome del tema
set background=dark
highlight clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name = "kitty_theme"

" Colori base
hi Normal guifg=#DEC4E0 guibg=#1A1625
hi Cursor guifg=#1A1625 guibg=#FFA6C9
hi Visual guifg=#FFE6F2 guibg=#372B48
hi Search guifg=#1A1625 guibg=#FFA6C9
hi LineNr guifg=#2D2438
hi CursorLine guibg=#2D2438
hi CursorLineNr guifg=#FFA6C9

" Sintassi
hi Comment guifg=#BDB2FF gui=italic
hi String guifg=#FF9EC4
hi Number guifg=#C4A6FF
hi Function guifg=#FFB2E2
hi Keyword guifg=#FFC9DE
hi Identifier guifg=#E2C4FF
hi Statement guifg=#FFB2D4
hi PreProc guifg=#D4B8FF
hi Type guifg=#FFCCEA
hi Special guifg=#D4CAFF

" UI Elements
hi StatusLine guifg=#1A1625 guibg=#FFA6C9
hi StatusLineNC guifg=#DEC4E0 guibg=#2D2438
hi VertSplit guifg=#C4A6FF guibg=NONE
hi Pmenu guifg=#FFE6F2 guibg=#2D2438
hi PmenuSel guifg=#1A1625 guibg=#FFA6C9

" Messages
hi Error guifg=#FF9EC4 guibg=NONE
hi Warning guifg=#FFB2E2 guibg=NONE
hi Todo guifg=#1A1625 guibg=#FFC9DE
