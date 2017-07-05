if exists("g:plb_loaded_plbsnippets")
  finish
endif
let g:plb_loaded_plbsnippets = 1

function! s:PLBUltiSnips()
  if globpath(&rtp, 'plugin/UltiSnips.vim') == ""
    return
  endif

  if !exists("g:UltiSnipsSnippetDirectories")
    if has("win32")
      " Windows
      let g:UltiSnipsSnippetDirectories = ["plbsnippets\UltiSnips"]
    else
      " Linux
      let g:UltiSnipsSnippetDirectories = ["plbsnippets/UltiSnips"]
    endif
  else
    if has("win32")
      " Windows
      let g:UltiSnipsSnippetDirectories += ["plbsnippets\UltiSnips"]
    else
      " Linux
      let g:UltiSnipsSnippetDirectories += ["plbsnippets/UltiSnips"]
    endif
  endif
endfunction

call s:PLBUltiSnips()

" vim: sw=2 ts=2 et
