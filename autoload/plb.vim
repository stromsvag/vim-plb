function! plb#Build()
  silent !clear
  
  if filewritable(bufname("%")) == 1
    execute "write"
  endif
  
  if !(globpath(&rtp, 'plugin/dispatch.vim') == "")
    execute "Make"
  else
    execute "make"
  endif
  
endfunction
" vim: sw=2 ts=2 et
