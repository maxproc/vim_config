" au! QuickFixCmdPre *.[ch] call Search_Word()
func Search_Word()
  let w = expand("<cword>")             " 在当前光标位置抓词
  exe "vimgrep " w " *.c *.h"
  exe 'copen'
endfun 
