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

function! plb#Run()
  silent !clear

  " Select runtime directory
  if exists("g:plb_runtime_dir")
    " The plugin user has specified a runtime directory.
    let runtime_dir = g:plb_runtime_dir
  else
    " Use file directory as runtime directory.
    let runtime_dir = expand("%:p:h")
  endif

  " Check if there are any runtime arguments
  if exists("g:plb_runtime_args")
    let runtime_args = g:plb_runtime_args
  else
    let runtime_args = ""
  endif

  if has("win32")
    " Windows
    execute "!start cmd /c cd " . runtime_dir . " & " . "plbwin " . shellescape(expand("%:t:r")) . " " . runtime_args . " & pause"
  else
    "Linux
    execute "!cd " . runtime_dir . " & " . "plb " . shellescape(expand("%:t:r")) . " " . runtime_args
  endif

endfunction

function! plb#Debug()
  silent !clear

  " Select runtime directory
  if exists("g:plb_runtime_dir")
    " The plugin user has specified a runtime directory.
    let runtime_dir = g:plb_runtime_dir
  else
    " Use file directory as runtime directory.
    let runtime_dir = expand("%:p:h")
  endif

  " Check if there are any runtime arguments
  if exists("g:plb_runtime_args")
    let runtime_args = g:plb_runtime_args
  else
    let runtime_args = ""
  endif

  if has("win32")
    " Windows
    execute "!start cmd /c cd " . runtime_dir . " & " . "plbwin dbgiface " . shellescape(expand("%:t:r")) . " " . runtime_args . " & pause"
  endif

endfunction
" vim: sw=2 ts=2 et
