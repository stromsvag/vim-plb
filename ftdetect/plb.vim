" Default extensions for PL/B files
autocmd BufNewFile,BufRead *.pls,*.inc set filetype=plb

" PL/B files are ASCII
autocmd BufNewFile,BufRead *.pls,*.inc setlocal fileencoding=ascii fileformat=unix

" vim: sw=2 ts=2 et
