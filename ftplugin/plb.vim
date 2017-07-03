" Only load the ftplugin once per buffer
if exists("b:did_ftplugin")
    finish
endif
let b:did_ftplugin = 1

" Add all folders in $PLB_PATH to vim path
if exists("$PLB_PATH")
    let &path = &path . "," . substitute($PLB_PATH, ":", ",", "g")
endif

" Set the compiler
execute ':compiler plb'

" Set comment
setlocal commentstring=//%s

" Set formatoptions, default is tcq
setlocal formatoptions-=t

" Set default value for textwidth. Can be overridden by global variable "g:plb_textwidth"
if !exists("g:plb_textwidth")
    let g:plb_textwidth = 100
endif
let &l:textwidth = g:plb_textwidth

" Set default values for tabstop and shiftwidth. Can be overridden by global variable "g:plb_tabstop"
if !exists("g:plb_tabstop")
    let g:plb_tabstop = 4
endif
let &l:shiftwidth = g:plb_tabstop
let &l:tabstop = g:plb_tabstop

" Set expandtab as default. Can be overridden by global variable "g:plb_noexpandtab"
if exists("g:plb_noexpandtab")
    setlocal noexpandtab
else
    setlocal expandtab
endif
