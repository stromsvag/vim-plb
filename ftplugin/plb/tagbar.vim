" Make sure the ctags command exists
if !executable('ctags')
  finish
" Check if tagbar is installed under plugins or is directly under rtp
elseif globpath(&rtp, 'plugin/tagbar.vim') == ""
  finish
endif

" Find full path of ctags configuration that is included in this plugin.
" This has to be done outside of a function because "<sfile>" does not
" work then.
if has("win32")
  " Windows
  let s:deffile = expand("<sfile>:p:h:h:h") . "\ctags\plb.conf"
else
  " Linux
  let s:deffile = expand("<sfile>:p:h:h:h") . "/ctags/plb.conf"
endif 

" SetTagBar will setup the use of tagbar
function! s:SetTagbar()
  if !exists("g:tagbar_type_plb")
    let g:tagbar_type_plb = {
	  \ 'ctagsbin' : 'ctags',
    \ 'deffile' : s:deffile,
	  \ 'kinds' : [
	  	\ 'l:labels:1:1',
	  	\ 'v:variables:1:1',
	  	\ 'r:record:1:1',
	  	\ 'f:functions:1:1'
	  \ ],
	  \ 'sro' : '.',
	  \ 'kind2scope' : { 'r' : 'record', 'f': 'functions'},
	  \ 'scope2kind' : { 'record' : 'r', 'functions' : 'f' }
    \}
  endif
endfunction

call s:SetTagbar()

" vim: sw=2 ts=2 et 
