if exists("current_compiler")
    finish
endif

let s:keepcpo= &cpo
set cpo&vim

let current_compiler = "plb"

if exists(":CompilerSet") != 2
  command -nargs=* CompilerSet setlocal <args>
endif

" The %f in errorformat must be followed by \ to make vim look for filename
" that looks like 'isfname'. The first backslash escapes the second
CompilerSet errorformat=%f\\:%l:%c:%m
CompilerSet makeprg=plbcmp\ %:p


let &cpo = s:keepcpo
unlet s:keepcpo

