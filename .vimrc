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
let g:ycm_complete_in_comments = 1  "��ע��������Ҳ�ܲ�ȫ
let g:ycm_collect_identifiers_from_comments_and_strings = 1   "ע�ͺ��ַ����е�����Ҳ�ᱻ���벹ȫ
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
nmap <F4> :YcmDiags<CR>

nmap <silent> <c-n> :NERDTreeToggle<CR>

"set ignorecase
let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
set t_Co=256
" �����﷨����
syntax enable
syntax on
set nofoldenable 
" ΪBash_support����Ĭ�ϵĲ���
let g:BASH_AuthorName   = 'star'
let g:BASH_Email        = 'myastar@126.com'
let g:BASH_Company      = 'IIECAS'
" �������ܸ�֪
filetype plugin on
filetype indent on
set completeopt=longest,menu
" ���к���ʾ
set nu
" �������ֱ����Զ�ʶ��
set fencs=utf-8,cp936
" ʹ�����
"set mouse=a
" ���ø�������
set hlsearch
" ���ô����۵�
set fdm=indent
"set foldmethod=syntax
" �����ַ�������ʾƥ���
set incsearch
" �����������ʾ�������������Щ��
set showcmd
" ѡ����ɫ����
"colorscheme desert
colorscheme darkburn
"�����Ʊ��
set tabstop=4
"���������Ŀո���Ϊ4
set shiftwidth=4

" ����ctags
set tags=tags;
"�Զ�����
set autoindent
"���C�����Զ�����
set autochdir
" Tlist���ڲ������������б�
"��ֹ�Զ��ı䵱ǰVim���ڵĴ�С
let Tlist_Inc_Winwidth=0
"�ѷ����б������Ļ�����
let Tlist_Use_Right_Window=1
"�õ�ǰ�����༭���ļ��ķ����б��Զ��۵������� �������Խ�ԼһЩ��Ļ�ռ�
let Tlist_File_Fold_Auto_Close=1
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
map tl :TlistToggle<cr>

" �򿪵�ǰĿ¼�ļ��б�
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

" ʹ��TAB�������ܸ�֪��ȫ
let g:SuperTabDefaultCompletionType="<C-X><C-O>"
" ���ð���<Tab>��Ĭ�ϵĲ�ȫ��ʽ, Ĭ����<C-P>,
" ���ڸ�Ϊ<C-X><C-O>. ����<C-P>�Ĳ�ȫ��ʽ,
" ���������Ĳ�ȫ��ʽ, ����Կ��������һЩ����:
" :help ins-completion
" :help compl-omni
let g:SuperTabRetainCompletionType=2
"0  - ����¼�ϴεĲ�ȫ��ʽ
"1  - ��ס�ϴεĲ�ȫ��ʽ,ֱ���������Ĳ�ȫ����ı���
"2  - ��ס�ϴεĲ�ȫ��ʽ,ֱ���� ESC �˳�����ģʽΪֹ

" FileExplorer �� TagList
map <F3> :WMToggle<CR>

" �����ͱ����б�
map <F4> :TlistToggle<CR>

" ������ǰ�ʣ�����quickfix����
map <F5> :call Search_Word()<CR>

" For quickfix
nmap <F6> :cn<cr>
nmap <F7> :cp<cr>

" ȫ�ܲ�ȫ
inoremap <F8> <C-x><C-o>

" ���������������������ʱ������
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
