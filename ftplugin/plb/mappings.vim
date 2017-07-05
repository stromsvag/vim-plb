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

" Check if tagbar is installed under plugins or is directly under rtp.
" If so, create TagbarToggle mapping
if !(globpath(&rtp, 'plugin/tagbar.vim') == "")
  nnoremap <silent> <buffer> <localleader><F9> :TagbarToggle<CR>
endif

" vim: sw=2 ts=2 et
