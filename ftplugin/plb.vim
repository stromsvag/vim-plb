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

