"set guifont=DejaVu\ Sans\ Mono\ 10
"set guifont=Consolas\ 11
filetype off                  " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Plugin 'Valloric/YouCompleteMe'
filetype plugin indent on     " required!
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>*'
let g:ycm_complete_in_comments = 1  "在注释输入中也能补全
let g:ycm_collect_identifiers_from_comments_and_strings = 1   "注释和字符串中的文字也会被收入补全
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
nmap <F4> :YcmDiags<CR>

nmap <silent> <c-n> :NERDTreeToggle<CR>

"set ignorecase
let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
set t_Co=256
" 开启语法高亮
syntax enable
syntax on
set nofoldenable 
" 为Bash_support设置默认的参数
let g:BASH_AuthorName   = 'star'
let g:BASH_Email        = 'myastar@126.com'
let g:BASH_Company      = 'IIECAS'
" 设置智能感知
filetype plugin on
filetype indent on
set completeopt=longest,menu
" 打开行号显示
set nu
" 设置文字编码自动识别
set fencs=utf-8,cp936
" 使用鼠标
"set mouse=a
" 设置高亮搜索
set hlsearch
" 设置代码折叠
set fdm=indent
"set foldmethod=syntax
" 输入字符串就显示匹配点
set incsearch
" 输入的命令显示出来，看的清楚些。
set showcmd
" 选择配色方案
"colorscheme desert
colorscheme darkburn
"设置制表符
set tabstop=4
"设置缩进的空格数为4
set shiftwidth=4

" 设置ctags
set tags=tags;
"自动缩进
set autoindent
"针对C语言自动缩进
set autochdir
" Tlist的内部变量。函数列表。
"禁止自动改变当前Vim窗口的大小
let Tlist_Inc_Winwidth=0
"把方法列表放在屏幕的左侧
let Tlist_Use_Right_Window=1
"让当前不被编辑的文件的方法列表自动折叠起来， 这样可以节约一些屏幕空间
let Tlist_File_Fold_Auto_Close=1
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
map tl :TlistToggle<cr>

" 打开当前目录文件列表
""""""""""""""""""""""""""""""
" netrw setting
""""""""""""""""""""""""""""""
let g:netrw_winsize = 30
map fe :Sexplore!<cr>

""""""""""""""""""""""""""""""
" BufExplorer
""""""""""""""""""""""""""""""
"let g:bufExplorerDefaultHelp=0       " Do not show default help.
"let g:bufExplorerShowRelativePath=1  " Show relative paths.
"let g:bufExplorerSortBy='mru'        " Sort by most recently used.
"let g:bufExplorerSplitRight=0        " Split left.
"let g:bufExplorerSplitVertical=1     " Split vertically.
"let g:bufExplorerSplitVertSize = 30  " Split width
"let g:bufExplorerUseCurrentWindow=1  " Open in new window.

"""""""""""""""""""""""""""""""""
"minibufexpl
"""""""""""""""""""""""""""""""""
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1

""""""""""""""""""""""""""""""
" winManager setting
""""""""""""""""""""""""""""""
let g:winManagerWindowLayout = "FileExplorer|TagList"
"let g:winManagerWindowLayout = \"BufExplorer,FileExplorer|TagList"
let g:winManagerWidth = 30
let g:defaultExplorer = 0
map <C-W><C-F> :FirstExplorerWindow<cr>
map <C-W><C-B> :BottomExplorerWindow<cr>
map wm :WMToggle<cr> 

" 使用TAB键来智能感知补全
let g:SuperTabDefaultCompletionType="<C-X><C-O>"
" 设置按下<Tab>后默认的补全方式, 默认是<C-P>,
" 现在改为<C-X><C-O>. 关于<C-P>的补全方式,
" 还有其他的补全方式, 你可以看看下面的一些帮助:
" :help ins-completion
" :help compl-omni
let g:SuperTabRetainCompletionType=2
"0  - 不记录上次的补全方式
"1  - 记住上次的补全方式,直到用其他的补全命令改变它
"2  - 记住上次的补全方式,直到按 ESC 退出插入模式为止

" FileExplorer 和 TagList
map <F3> :WMToggle<CR>

" 函数和变量列表
map <F4> :TlistToggle<CR>

" 搜索当前词，并打开quickfix窗口
map <F5> :call Search_Word()<CR>

" For quickfix
nmap <F6> :cn<cr>
nmap <F7> :cp<cr>

" 全能补全
inoremap <F8> <C-x><C-o>

" 启动函数变量快速浏览的时间设置
set updatetime=100
" Set for cscope
if has("cscope")
	set csprg=/usr/bin/cscope
	set csto=0
	set cst
	set nocsverb
	" add any database in current directory
	if filereadable("cscope.out")
		cs add cscope.out
	" else add database pointed to by environment
	elseif $CSCOPE_DB != ""
		cs add $CSCOPE_DB
	endif
set csverb
set cscopetag
set cscopequickfix=s-,g-,c-,d-,t-,e-,f-,i-
endif


"nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>
"nmap <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>
"nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>
"nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>
"nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>
"nmap <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
"nmap <C-@>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
"nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>
"
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>


" Setting For vim-latex
set shellslash
set grepprg=grep\ -nH\ $*
