" Vim color file
" Maintainer:	SilentOcapi
" Last Change:	2021 May 10

hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "knight"

hi StatusLineNC cterm=bold ctermfg=White ctermbg=DarkGray
hi Pmenu        cterm=bold ctermfg=White ctermbg=20
hi PmenuSel     cterm=bold ctermfg=20    ctermbg=White
hi CurSearch    cterm=bold ctermfg=White ctermbg=43
hi Search                  ctermfg=White ctermbg=35
hi ColorColumn	           ctermbg=242

hi! link String      Constant
hi! link Character   Constant
hi! link Boolean     Constant
hi! link Operator    Statement
hi! link Label       Statement
hi! link Repeat      Statement
hi! link Conditional Statement
hi! link Exception   Statement
hi! link Keyword     Statement

hi link Character   String
hi link Conditional Repeat
hi link Exception   Repeat
hi link Keyword     Repeat

hi String                ctermfg=DarkGreen
hi Number                ctermfg=117
hi Boolean    cterm=Bold ctermfg=Magenta
hi Operator              ctermfg=208
hi Statement             ctermfg=190
hi Label      cterm=Bold ctermfg=11
hi Repeat                ctermfg=11
hi Todo                                    ctermbg=Magenta
hi Function   cterm=Bold ctermfg=81
hi Identifier            ctermfg=123
hi Constant   cterm=Bold ctermfg=129

" Cdd_specific:
if exists("b:current_syntax") && b:current_syntax == "cdd"
	hi Yeah ctermfg=46
	hi Nah ctermfg=9
	" Pure:
	hi link cdd_pp_hidden PreProc
	hi link cdd_pp_neddin PreProc
	hi def cdd_node				cterm=bold ctermfg=46
	hi def cdd_father_node		cterm=bold ctermfg=226
	hi def cdd_symbolic_node	cterm=bold ctermfg=11
	hi link cdd_alias			Statement
	" Color_regions:
	hi def Blue					ctermfg=4
	hi def Red					ctermfg=1
	hi def Yellow				ctermfg=3
	hi def Green				ctermfg=2
	hi def Purple				ctermfg=5
	hi def Gray					ctermfg=7
endif

" Temp
hi SpellBad ctermbg=9
