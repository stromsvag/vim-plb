if exists("b:current_syntax")
	finish
endif

" ENTER SYNTAX BELOW HERE
" =======================

syntax case ignore

" PL/B BadWhitespace
" ==================
syntax match plbBadWhitespace "\v\s+$"
highlight plbBadWhitespace ctermbg=red
" PL/B Constant
" ============
"syntax keyword plbConstant
syntax region plbString start=/\v"/ skip=/\v[^#]\zs#"/ end=/\v"/
"syntax keyword plbCharacter
syntax match plbNumber "\v<\d+>"
syntax keyword plbBoolean NOT EQUAL ZERO LESS GREATER OVER EOS
syntax keyword plbTrap IO CFAIL DBFAIL FORMAT RANGE PARITY SPOOL INT[ERRUPT] ESC[APE] MOUSE BACKSPACE CANCEL
syntax keyword plbFunctionFlags FKEY F1 F2 F3 F4 F5 F6 F7 F8 F9 F10 F11 F12 UP DOWN LEFT RIGHT INS DEL PGUP PGDN HOME END ESC[APE] TAB BACKTAB EVENT
syntax keyword plbClock DATE DAY ENV ERROR INI PORT SYSPORT TIME TIMESTAMP VERSION WEEKDAY WINDOW YEAR
syntax match plbStarKeyword "\v%(\*)@<=\w+"
syntax match plbFloat "\v<\d+\.\d+>"
syntax keyword plbFileMode EXCLUSIVE READSHARE SHARENF

highlight link plbString String
highlight link plbNumber Number
highlight link plbFloat Float
highlight link plbBoolean Boolean
highlight link plbClock String
highlight link plbFunctionFlags Boolean
highlight link plbStarKeyword String
highlight link plbTrap Boolean
highlight link plbFileMode Boolean

" PL/B Identifier
" ===============
"syntax match plbIdentifier
syntax match plbFunction "\v%(CALL\s+)@<=\#?\w+"

highlight link plbFunction Function

" PL/B Statement
" ==============

"Compiler Directives
syntax keyword plbStatement %ASSEMBLY %AUTODIM BYTE BYTEX CIFxx CONST CMPVER DEFINE DEFINED %ENCRYPTON %ENCRYPTOFF ENTERZ EXITZ EQU[ATE] EXTERNAL FDECLARED GETPARM IF %IF INC[LUDE] LIKE LISTON LISTOFF LOADPARM MACRO MDEFAULT MDEFINED MDELM MEND MGIVING MLITERAL MNULL MUNDEF MUSING PDECLARED PLFORM PROFILE REDEFINE RESETPARM %RUNNAMEON %RUNNAMEOFF SKIP %STOREPLF SUBTITLE TABPAGE TITLE TRACE UNDEFINE UNIXCOMMAND VERB WHEN WORD WORDX %XREFON %XREFOFF
"Character String Instructions
syntax keyword plbStatement APPEND BUMP CALL CHOP CLEAR CMATCH CMOVE COMPRESS CONVERTUTF COUNT DECODE64 DECOMPRESS DECRYPT DFREE DMAKE DRELEASE EDIT ENCODE64 ENCRYPT ENDSET EXPLODE EXTEND FILL FINDCHAR HASH IMPLODE LCMOVE LENSET LOAD LOWERCASE MATCH MOVEFPTR  MOVELPTR MOVELS MOVEPLEN OCCURS PACK PACKKEY PARSE PARSEFNAME REMOVE REP[LACE] RESET SCAN SDELETE SEARCH SET SETLPTR SFORMAT SINSERT SMAKE SPLICE SQUEEZE STORE TEST TYPE UNPACK UPPERCASE WHEREIS XOR
"Mathematical Instructions
syntax keyword plbStatement ADD ARCCOS ARCSIN ARCTAN CALC CHECK10 CHECK11 COMPARE COS COSH DECR DIVIDE EXP INCR LOG LOG10 MULTIPLY NFORMAT POWER ROTATELEFT ROTATERIGHT SHIFTLEFT SHIFTLEFTA SHIFTRIGHT SHIFTRIGHTA SIN SINH SQRT SUBTRACT TAN TANH
"Move Instructions
syntax keyword plbStatement MOVE MOVELIST
"Program Control Instructions
syntax keyword plbStatement APICALL BRANCH BRANCHF BREAK CONTINUE CACHELIST CACHELISTEND CALL CALLS CASE CHAIN CLEAREVENT DEBUG DEFAULT DSCNCT ENDSELECT ENTRY EVENTCHECK EVENTCLEAR EVENTCOUNT EVENTQUEUE EVENTWAIT EXCEPTCHECK EXCEPTCLEAR EXCEPTDISABLE EXCEPTDO EXCEPTENABLE EXCEPTSET EXTERN FLAGRESTORE FLAGSAVE FOR FRESTORE FSAVE FUNCTION FUNCTIONEND GOTO IF ENDIF LFUNCTION LOADMOD LOOP REPEAT LROUTINE NOBREAK NORETURN PAUSE PERFORM PERFORMF PROCEDURE RETCOUNT RETURN ROUTINE SELECT SETFLAG STOP DETACH SWITCH ENDSWITCH TRAP TRAPCLR TRAPRESTORE TRAPSAVE TRAPSIZE
"System Interface Instructions
syntax keyword plbStatement ADMCOMMAND ADMGETINFO ADMLOGOFF ADMLOGON ADMSETINFO ALERT BATCH CLEARADR CLEARLABEL CLIPGET CLIPSET CLOCK COPYBYTES COPYCANCEL COPYFILE COPYNEXT COPYSTATUS EVENTINFO EXECUTE EXTCALL FORK GETINFO GETLABEL GETMODE GETSTRING LOADADR LOADLABEL MAILSEND MOVEADR MOVEADDR MOVEGADDR MOVELABEL MOVELV MOVEPTR MOVEVARADDR MOVEVL PARAMTEXT PATH PROFILER ROLLOUT SEARCHPATH SETMODE SHUTDOWN STOREADR STORELABEL TESTLABEL WINAPI XCALL
"Interactive IO Instructions
syntax keyword plbStatement BEEP CHARRESTORE CHARSAVE DISPLAY KEYIN MOUSE SCRNRESTORE SCRNSAVE SCRNSIZE SETWTITLE SNDCLOSE SNDOPEN SNDPLAY STATERESTORE STATESAVE STATESIZE WINERASE WINHIDE WINREFRESH WINRESTORE WINSAVE WINSHOW WINSIZE
"Printer IO Instructions
syntax keyword plbStatement NOEJECT PAGESETUP PRINT PRTCLOSE PRTOPEN PRTPAGE PRTPLAY RELEASE RELEASEJOB SPLCLOSE SPLOPEN
"Object IO Instructions
syntax keyword plbStatement ACTIVATE CHECKITEM CHECKPROP CREATE DEACTIVATE DELETEITEM DESTROY DISABLEITEM DRAGITEM ENABLEITEM EVENTREG[ISTER] EVENTSEND FORMLOAD GETFOCUS GETITEM GETPROP INSERTITEM LISTCNT LISTDEL LISTGET LISTINS SETFOCUS SETITEM SETPROP
"Disk IO Instructions
syntax keyword plbStatement BTRIEVE CLOSE COUNTKEYS DELETE DELETED DELETEDK DELETEK ERASE FILEIO FILEPI FILTER FINDDIR FINDFILE FLUSH FLUSHEOF FPOSIT FPOSITA FPOSITB FPOSITC GETFILE GETFNAME INSERT INSERTXML OPEN POSITEOF PREP[ARE] PREPDEFAULT READ READTAB READLK READKEY READKG READKGTB READKGLK READKGP READKGPLK READKP READKPTB READKPLK READKS READKSTB READKSLK READLAST READLASTLK RENAME REPOSIT SCHEMA SETFILE STREAM TRANSACTION UNLOCK UPDATE UPDATAB WEOF WRITAB WRITE
"SQL Instructions
syntax keyword plbStatement DBBREAK DBCLEAR DBCLOSE DBCONNECT DBDISCONNECT DBERROR DBEXECUTE DBFETCH DBFETCHP DBFILE DBOPEN DBPREPARE DBRESULT DBSEND DBSTATE DBSTATEMENT DBTRANSACTION
"Utility Instructions
syntax keyword plbStatement AAMDEX INDEX SORT
"Communications IO Instructions
syntax keyword plbStatement COMATTACH COMCHECK COMCLOSE COMCLR COMOPEN COMREAD COMSTAT COMWRITE HTTP
syntax keyword plbConditional IF ELSE ELSEIF ENDIF WHILE UNTIL
syntax keyword plbRepeat LOOP REPEAT FOR
"syntax keyword plbLabel

syntax match plbOperator "\v\="
syntax match plbOperator "\v\*"
syntax match plbOperator "\v/"
syntax match plbOperator "\v\+"
syntax match plbOperator "\v-"

"syntax keyword plbException

highlight link plbStatement Statement
highlight link plbConditional Conditional
highlight link plbRepeat Repeat
highlight link plbOperator Operator
highlight link plbKeyword Keyword

" PL/B PreProc
" ============
"syntax keyword plbPreProc
syntax keyword plbInclude INCLUDE
syntax keyword plbDefine DEFINED MDEFINED
"syntax keyword plbMacro

syntax match plbPreCondit "\v\%IF"
syntax match plbPreCondit "\v\%ELSE"
syntax match plbPreCondit "\v\%ELSEIF"
syntax match plbPreCondit "\v\%IFDEF"
syntax match plbPreCondit "\v\%IFNDEF"
syntax match plbPreCondit "\v\%IFZ"
syntax match plbPreCondit "\v\%IFNZ"
syntax match plbPreCondit "\v\%ENDIF"
syntax keyword plbPreCondit CIF CELSE CELSEIF CIFDEF CIFNDEF CIFZ CIFNZ CENDIF
syntax keyword plbPreCondit IFEQ IFNE IFGT IFNG IFLT IFNL IFGE IFLE IFZ IFNZ IFC IFS XIFk

highlight link plbInclude Include
highlight link plbDefine Define
highlight link plbPreCondit PreCondit

" PL/B Type
" =========

"Data Definitions
syntax keyword plbType DIM INIT FORM INTEGER VAR
syntax keyword plbStructure LIST LISTEND RECORD RECORDEND VARLIST FILELIST FILELISTEND
"File Definitions
syntax keyword plbType ADMIN AFILE BFILE COMFILE FILE IFILE PFILE SNDFILE XFILE
" Object Defintions
syntax keyword plbStorageClass ANIMATE DATALIST LABELTEXT PICT STATUSBAR AUTOMATION DIALOG LINE POPUPMENU STATUSPANEL BUTTON EDITDATETIME LISTVIEW PROGRESS SUBMENU CHECKBOX EDITNUMBER MAINWINDOW RADIO TABCONTROL CHECKGRP EDITTEXT MENU RADIOGRP TIMER CLIENT FLOATMENU MENUITEM RICHEDITTEXT TOOLBAR COLLECTION FONT MOVIE RUNTIME TOOLBUTTON COLOR GROUPBOX MREGION SHAPE TREEVIEW COMBOBOX HSCROLLBAR NETOBJECT SLIDER VARIANT CONTAINER ICON OBJECT SPLITTER VSCROLLBAR CONTROL IMAGELIST PANEL STATTEXT WINDOW XDATA
"Other
syntax keyword plbTypedef DEFINITION LIKE LIKEPTR

highlight link plbType Type
highlight link plbStructure Structure
highlight link plbTypedef Typedef
highlight link plbStorageClass StorageClass

" PL/B Special
" ==============
"syntax keyword plbSpecial
"syntax keyword plbSpecialChar
syntax match plbTag "\v^\w*[$#]?\w+"
syntax keyword plbDelimiter BY TO OF FROM USING WITH IN INTO GIVING AND OR
syntax match plbDelimiter ","
syntax match plbDelimiter "::"
syntax match plbDelimiter ":"
syntax match plbDelimiter "("
syntax match plbDelimiter ")"
syntax keyword plbDebug DEBUG

highlight link plbTag Tag
highlight link plbDelimiter Delimiter
highlight link plbDebug Debug

" PL/B Underline
" ==============
syntax match plbFile "\v%(INCLUDE\s+)@<=\w+([/.]\w+)?"
highlight link plbFile Underlined

" PL/B Todo
" =====================
syntax keyword plbTodo TODO FIXME
highlight link plbTodo Todo

" PL/B Comment
" Must be last syntax to work
" =============
syntax match plbComment "\v^[.;*+].*$" contains=plbTodo
syntax match plbComment "\v^\/\/.*$" contains=plbTodo
syntax match plbComment "\v\/\/.*$" contains=plbTodo
syntax match plbComment "\v\s[;].*$" contains=plbTodo

highlight link plbComment Comment


" ENTER SYNTAX ABOVE HERE
" =======================

let b:current_syntax = "plb"
