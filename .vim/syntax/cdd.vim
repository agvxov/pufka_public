" Vim syntax file
" Language: ???
" Current Maintainer: SilentOcapi
" Last Change: 2021 Okt 10
" TODO:
"	>nodes
"	>4chan syntax
"	>markdown partal syntax
"	>cdd postporocessor

runtime! syntax/cpp.vim
unlet b:current_syntax
let b:current_syntax = "cdd"

"################
" Regions:
" 	Bold/Italic/Underline:
syn region Italic start="\S\@<=Đ\|Đ\S\@=" end="\S\@<=Đ\|Đ\S\@=" skip="\\Đ"
syn region Bold start="\S\@<=ĐĐ\|ĐĐ\S\@=" end="\S\@<=ĐĐ\|ĐĐ\S\@=" skip="\\Đ"
syn region Underline start="\S\@<=đ\|đ\S\@=" end="\S\@<=đ\|đ\S\@=" skip="\\đ"

syn region BoldItalic start="\S\@<=ĐĐĐ\|ĐĐĐ\S\@=" end="\S\@<=ĐĐĐ\|ĐĐĐ\S\@=" skip="\\Đ" 
syn region ItalicUnderline start="\S\@<=đĐ\|đĐ\S\@=" end="\S\@<=Đđ\|Đđ\S\@=" skip="\\đĐ"
syn region BoldUnderline start="\S\@<=đĐĐ\|đĐĐ\S\@=" end="\S\@<=ĐĐđ\|ĐĐđ\S\@=" skip="\\đĐ"
syn region BoldItalicUnderline start="\S\@<=đĐĐĐ\|đĐĐĐ\S\@=" end="\S\@<=ĐĐĐđ\|ĐĐĐđ\S\@=" skip="\\đĐ"

syn region Reverse start="\S\@<=ßß\|ßß\S\@=" end="\S\@<=ßß\|ßß\S\@=" skip="\\ßß" 

"syn region Strike start="\S\@<=đđ\|đđ\S\@=" end="\S\@<=đđ\|đđ\S\@=" skip="\\đđ" 
"	Make:
syn region makeIdent	start="\$(" skip="\\)\|\\\\" end=")" contains=makeStatement,makeIdent
syn region makeIdent	start="\${" skip="\\}\|\\\\" end="}" contains=makeStatement,makeIdent
"	C_sharp:
syn region	csPreCondit	start="^\s*#\s*\%(define\|undef\|if\|elif\|else\|endif\|line\|error\|warning\|pragma\)\>" skip="\\$" end="$" contains=csComment keepend
syn region	csRegion	matchgroup=csPreCondit start="^\s*#\s*region.*$" end="^\s*#\s*endregion" transparent fold contains=TOP
hi def link	csPreCondit	PreCondit
"	Colored:
syn region Blue			start="Blue(" end=")"
syn region Red			start="Red(" end=")"
syn region Yellow		start="Yellow(" end=")"
syn region Green		start="Green(" end=")"
syn region Purple		start="Purple(" end=")"
syn region Gray			start="Gray(" end=")"
"################

"################
" Keywords:
"	Overwriting existing syntax highlighting
syn keyword cRepeat			case default
syn keyword cRepeat			friend using
syn keyword cRepeat			public private protected
"	General bash
syn keyword	cppOperator		then
"	General python
syn keyword	cppOperator		is as with
"syn keyword [...]		assert async await finally nonlocal

	syn case ignore

" 	Constants
syn keyword cppBoolean		none all always
syn keyword cppBoolean		true false none all
"	Yeahs
syn keyword Yeah			pro[s]
"   Nahs
syn keyword Nah				no nor non not dont doesnt shoulnt musnt cannot
syn keyword Nah				con[s]
"syn keyword Nah				asd[s]
" 	Comment keywords
"syn keyword ShallRevisit	?!
syn keyword Todo			FIXME NOTE NOTES TODO XXX TLDR
" 	Misc
syn keyword cStorageClass	register[s]
syn keyword cStatement		returns
" Types:
"   Generic terminology
syn keyword Identifier		let var[s]
syn keyword cppModifier		variable[s]
"	Cpp
"		Technical terminology
syn keyword cppModifier		constructor[s] deconstructor[s]
" 		Base types 
syn keyword cppType			integer[s]
syn keyword cppType			char_type[s]
syn keyword cppType			bool[s] short[s] int[s] long[s] float[s] double[s] char[s] void[s] integer[s]
"		Containers	"stack not added
syn keyword cppType			bitset[s] array[s] string[s] vector[s] queue[s] deque[s] forward_list[s] set[s] unordered_set[s] pair[s] map[s] unordered_map[s] 
"	Python
" 		Base types
syn keyword cppType			list[s] tuple[s] dictionary dictionaries
"		Misc
syn keyword cppStatement	pass
"	C#
" 		Base types
syn keyword cppType			ushort[s] uint[s] ulong[s] decimal[s] byte[s] sbyte[s]
" 		.Net
syn keyword cppType			Int16[s] Int32[s] Int64[s]
"	Bash
syn keyword cppStatement eval exec

	syn case match

" Directional_instruction:
syn keyword cppOperator		top bottom AT BELOW ABOVE
" Colors:		//makes regions not to work; ?!
"syn keyword Blue			Blue
"syn keyword Red			Red
"syn keyword Yellow			Yellow
"syn keyword Green			Green
"syn keyword Purple			Purple
"syn keyword Gray			Gray
"################

"################
" Markdown_subset:
syn region markdownH1Title matchgroup=markdownH1 start="###" end="###" 		oneline
syn region markdownH2Title matchgroup=markdownH2 start="####" end="####"	oneline
syn region markdownH2Title matchgroup=markdownH2 start="#####" end="#####"	oneline
hi link markdownH1	SpecialComment
hi link markdownH2 markdownH1
hi link markdownH3 markdownH1
hi def markdownH1Title			ctermfg=14 cterm=bold
hi def markdownH2Title			ctermfg=14
"################

"################
" Inline WebShit:
"syntax include @HTML syntax/html.vim
"syntax region httpSpinet matchgroup=Spin start="#<html>" end="#</html>" contains=@HTML
"hi def link Spin			Folded
"################

"################
" Pure_cdd:
"	PostProcessor:
syn match cdd_pp_hidden "^\s*#hidden"
syn match cdd_pp_neddin "^\s*#neddin"
"	Nodes:
syn match cdd_node			"^\s*>"
syn match cdd_father_node	"^\s*-"
syn match cdd_symbolic_node	"^\s*¤"
syn match cdd_entry			"^(\s*+) \w+"
"	Misc:
syn match cdd_alias			"alias"
"################

"################
" High_lighting:
hi def Italic				term=italic cterm=italic gui=italic
hi def Bold					term=bold cterm=bold gui=bold
hi def Underline			term=underline cterm=underline gui=underline

hi def BoldItalic			term=bold,italic cterm=bold,italic gui=bold,italic
hi def BoldUnderline		term=bold,underline cterm=bold,underline gui=bold,underline
hi def ItalicUnderline		term=italic,underline cterm=italic,underline gui=italic,underline
hi def BoldItalicUnderline	term=bold,italic,underline cterm=bold,italic,underline gui=bold,italic,underline

hi def Reverse				term=reverse cterm=reverse gui=reverse
hi def link makeIdent		Identifier
"################

function! TextEnableCodeSnip(filetype) abort	" credits to 'Ivan Tishchenko' on this function
	let group = 'textGroup' . toupper(a:filetype)
	if exists('b:current_syntax')
		let s:current_syntax = b:current_syntax
		unlet b:current_syntax
	endif
	execute 'syntax include @' . group . ' syntax/' . a:filetype . '.vim'
	try
		execute 'syntax include @' . group . ' after/syntax/' . a:filetype . '.vim'
	catch
	endtry
	if exists('s:current_syntax')
		let b:current_syntax=s:current_syntax
	else
		unlet b:current_syntax
	endif
	execute 'syntax region textSnip_' . a:filetype .
		\ ' matchgroup=SpecialComment' .
		\ ' keepend'
		\ ' start="@begin=' . a:filetype . '@"' .
		\ ' end="@end=' . a:filetype . '@"'
		\ ' contains=@' . group
endfunction
call TextEnableCodeSnip('javascript')
call TextEnableCodeSnip('html')
call TextEnableCodeSnip('php')
call TextEnableCodeSnip('sql')
call TextEnableCodeSnip('sh')
call TextEnableCodeSnip('python')

syn iskeyword clear

" vim:set sw=2:
"hi def Strike				term=strikethrough cterm=strikethrough gui=strikethrough

"hi def ShallRevisit		 	term=bold cterm=bold gui=bold ctermfg=red guifg=red
