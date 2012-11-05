" Vim syntax file
" This is a GENERATED FILE. Please always refer to source file at the URI below.
" Language: Mon configuration (mon.cf)
" Maintainer: Unagi
" License: This file can be redistribued and/or modified under the same terms
"		as Vim itself.
" Last Change: 2012-11-05
" URL: https://github.com/unagi/
" Notes: 

" Setup
if version >= 600
	if exists("b:current_syntax")
		finish
	endif
else
	syntax clear
endif

" Base constructs
syn match moncfComment "^\s*#.*$"
syn region moncfString start=+"+ end=+"+ skip=+\\\\\|\\\"+

" Core and mpm
syn keyword moncfSingleOption allow_empty_group unack_summary 
syn match moncfOption "\s\(alert\|upalert\|monitor\)\s"
syn match moncfAlert "\s\+\S\+\.monitor"
syn match moncfAlert "\w\+@[\w\.]\+"
syn keyword moncfIndex watch period
syn keyword moncfGroup hostgroup service

" Define the default highlighting
if version >= 508 || !exists("did_moncf_syntax_inits")
	if version < 508
		let did_moncf_syntax_inits = 1
		command -nargs=+ HiLink hi link <args>
	else
		command -nargs=+ HiLink hi def link <args>
	endif

    HiLink moncfIndex String
    HiLink moncfGroup Type
	HiLink moncfOption Function
	HiLink moncfSingleOption Number
    HiLink moncfAlert Special
	HiLink moncfValue Number
	HiLink moncfComment Comment
	HiLink moncfMailaddr Type
	HiLink moncfString String

	delcommand HiLink
endif

let b:current_syntax = "moncf"
