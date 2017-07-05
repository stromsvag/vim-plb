nnoremap <buffer> <localleader><F5> :call plb#Run()<cr>
nnoremap <buffer> <localleader><F7> :call plb#Build()<cr>
nnoremap <buffer> <localleader><F8> :call plb#Debug()<cr>

" PL/B help
if has("win32")
  " PL/B Language Reference
  nnoremap <silent> <buffer> <localleader><F1> :!start cmd /c "plb.chm" & pause<CR>
  " PL/B Runtime Reference
  nnoremap <silent> <buffer> <localleader><F2> :!start cmd /c "plbrun.chm" & pause<CR>
endif

" vim: sw=2 ts=2 et
