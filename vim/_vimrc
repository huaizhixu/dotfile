" 禁止vim以兼容vi的模式运行
set nocompatible

" 判断当前系统
function! MySys()
	if has("win32") || has("win64")
		return "windows"
	elseif has("unix")
		return "unix"
	endif
endfunction

" 启用插件和缩进
filetype plugin indent on

" 语法高亮
syntax on

" 设置vim内部编码
set encoding=utf-8

" 设置文件编码集 :help encoding-values
set fileencodings=ucs-bom,utf-8,chinese,gbk,gb18030,taiwan,japan,korea,latin-1

" 设置文件编码
set fileencoding=utf-8

" 设置控制台编码
if MySys()=="windows"
	set termencoding=gbk
else
	set termencoding=utf-8
endif

" 解决控制台输出乱码
language messages zh_CN.utf-8
if has("gui_running")
	source $VIMRUNTIME/delmenu.vim
	source $VIMRUNTIME/menu.vim
endif

" 对不明宽度字符的处理方式
set ambiwidth=double

" 设置文件换行符模式
if MySys()=="windows"
	set fileformat=dos
else
	set fileformat=unix
endif

" 设置背景颜色类型
set background=dark

" 设置终端颜色
if MySys()=="windows"
	set t_Co=16
else
	set t_Co=256
endif

" 配色方案
colo desert

" 解决一行代码过长就容易看不到的现象
set display=lastline

" 去掉菜单栏
set guioptions-=m

" 去掉工具栏
set guioptions-=T

" 去掉右侧滚动条
set guioptions-=r

" 设置状态栏显示方式
set laststatus=2
" 设置状态栏显示内容
set statusline=%F\ [%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}][%{&ff}]%=[ASCII=\%03.3b]\ %LL\ %l,%c%V\ %P

" 显示行号
set nu

" 打开状态栏标尺
set ruler

" 显示用户当前的操作
set showcmd

" 高亮搜索内容
set hls

" 运行宏时不重绘屏幕
set lz

" 禁用错误提示
set noerrorbells
set novisualbell
set t_vb=

" 高亮当前行
"set cursorline

" 高亮当前列
"set cursorcolumn

" 设置彩色列
"set cc=80

" 字符之间插入像素
set linespace=0

" 启用鼠标
if has('mouse')
	set mouse=a
endif

" 不用alt键访问菜单
set winaltkeys=no

" 禁用断行
set nolinebreak

" 设定自动读取文件
set autoread

" 允许在当前buffer未保存时直接切换
set hidden

" 不使用交换文件
set noswapfile

" 设定文件浏览器目录为buffer当前目录
set bsdir=buffer

" 搜索时不区分大小写
set ignorecase

" 搜索时未完全输入完毕就开始检索
set is

" magic搜索模式
set magic

" 文件补全时忽略的符号
set isfname-==

" 启用持久性撤销
if v:version > 702
	set undofile
    " 设置持久性撤销目录
	if MySys()=="windows"
		set undodir=$TEMP
	else
		set undodir=/tmp
	endif
endif

" session保存的选项
set sessionoptions-=help

" 使用退格键删除字符
set backspace=indent,eol,start

" 允许按左右、退格等键移动到上下两行
set whichwrap=b,s,<,>,[,]

" 不自动换行
"set nowrap

" 自动缩进的尺寸为4个空格
set sw=4

" TAB宽度为4个字符
set ts=4

" TAB替换为空格
set et

" 智能tab
set smarttab

" 关闭自动备份
"set nobackup

" 显示括号配对情况
set sm

" 打开C/C++风格的自动缩进
set cin

" 打开普通文件自动缩进
set ai

" 智能缩进
set si

" 历史操作列表条数
set history=512

" 设置折叠
set foldcolumn=2
set foldmethod=syntax
set foldlevel=3

" 补全方式
set completeopt=menu

" 自动补全的方式
set wildmode=list:full
set wildmenu

" 设置leader为,
let mapleader=","

" 映射j、k每次移动屏幕的一样
nmap j gj
nmap k gk

" 命令行模式下的移动
cmap <C-f> <Right>
cmap <C-b> <Left>
cmap <C-f> <C-Right>
cmap <C-b> <C-Left>

" 重新载入vim配置文件
map <leader>rr <ESC>:so $MYVIMRC<CR>

" 编辑vimrc
map <leader>ee <ESC>:e $MYVIMRC<CR>

" 编辑本地vimrc 
map <leader>el <ESC>:e $HOME/.vimrc_local.vim<CR>

" Ctrl+C复制
vmap <C-C> "+y
" Ctrl+X剪切
vmap <C-X> "+x
" Ctrl+V粘贴
nmap <C-V> "+gp
vmap <C-V> "+gp
imap <C-V> <C-O>"+gp

" 列选择模式
nmap vv <C-Q>

" 空格键向下翻页，Shift+空格向上翻页
nmap <Space> <C-f>
nmap <S-Space> <C-b>

" Tab缩进
nmap <Tab> v>
nmap <S-Tab> v<

" Ctrl+方向键调整窗口大小
nmap <C-Up> <C-w>+
nmap <C-Down> <C-w>-
nmap <C-Left> <C-w><
nmap <C-Right> <C-w>>

" Alt+a/s/d/w切换窗口
nmap <M-s> <C-w>j
nmap <M-w> <C-w>k
nmap <M-a> <C-w>h
nmap <M-d> <C-w>l

" 删除^M
nmap <leader>dm mmHmn:%s/<C-V><CR>//ge<CR>'nzt'm

"每次写入配置文件都会自动载入
autocmd! bufwritepost $MYVIMRC source $MYVIMRC

" 输入xdate并按空格自动插入当前时间
iab xdate <C-R>=strftime("%Y-%m-%d %H:%M:%S")<CR>

" 如果存在本地配置文件时自动载入
if filereadable($HOME.'/.vimrc_local.vim')
    source ~/.vimrc_local.vim
endif

" vim: ts=4 nowrap fdm=marker foldcolumn=1 filetype=vim
