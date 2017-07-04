if has("win32")
  nnoremap <silent> <buffer> <localleader><F1> :!start cmd /c "plb.chm" & pause<CR>
  nnoremap <silent> <buffer> <localleader><F2> :!start cmd /c "plbrun.chm" & pause<CR>
endif

" vim: sw=2 ts=2 et
