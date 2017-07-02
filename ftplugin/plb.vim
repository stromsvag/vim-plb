" Only load the ftplugin once per buffer
if exists("b:did_ftplugin")
    finish
endif
let b:did_ftplugin = 1
" Set the compiler
execute ':compiler plb'

