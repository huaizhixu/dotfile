set number

syntax on
" 打开文件类型侦测
filetype on

" 根据不同的文件类型加载不同的插件
filetype plugin on

"共享系统剪切板
set clipboard=unnamedplus

" 快速跳转
nmap J 3j
nmap K 3k
set term=screen-256color

"空格转换
set ts=4  " ts是tabstop的缩写，设TAB宽4个空格
set expandtab
set shiftwidth=4

set showcmd

" 让vim配置保存后立马生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

"display trailing in tabline
let g:airline#extensions#whitespace#enabled = 1
" 开启实时搜索并且对大小写不敏感
set incsearch
set ignorecase 
" 关闭兼容模式
set nocompatible
" 开启vim自身命令行模式智能补全
set wildmenu

""滚动行号设置
"set relativenumber
map <silent><F4> :set relativenumber!<CR>


set background=dark
set laststatus=2
let g:airline#extensions#tabline#enabled=1

" Vim 在与屏幕/键盘交互时使用的编码(取决于实际的终端的设定)
set encoding=utf-8
set langmenu=zh_CN.UTF-8
"设置打开文件的编码格式
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fileencoding=utf-8

let mapleader=","

let g:lightline = { 'colorscheme': 'papercolor', }
set t_Co=256
let g:airline_powerline_fonts = 1

" 格式化
set formatoptions=tcrqn " 根据要求格式化
set autoindent     " 继承缩紧
set smartindent    " 为C语言提供自动缩紧
set cindent        " 使用C样式缩紧
set smarttab       " 在行和段开始处使用制表符

" 关闭方向键, 强迫自己用 hjkl
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

" 搜索设置
set showmatch      " 匹配成队符号
set matchtime=5    " 匹配括号高亮的时间
" 行数控制
set scrolloff=20  " 光标始终保持在距离上下顶点20行的位置
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" 文件树
Plug 'preservim/nerdtree'

Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'ryanoasis/vim-devicons'

Plug 'shime/vim-livedown'

if !has('gui_running')
   Plug 'brglng/vim-im-select'
endif

" vim配色方案
Plug 'flazz/vim-colorschemes'

""彩虹括号
Plug 'luochen1990/rainbow'
"行末空格显示
Plug 'bronson/vim-trailing-whitespace'
" 文件数图标
Plug 'ryanoasis/vim-devicons'
" 图标美化
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" 中文帮助文档
"Plug 'yianwillis/vimcdoc'
Plug 'mhinz/vim-startify'
" 快速跳转
Plug 'easymotion/vim-easymotion'

" " 对齐代码的虚线，写Python尤其需要
Plug 'Yggdroot/indentLine'

"用不同颜色高亮单词或选中块
Plug 'Yggdroot/vim-mark'

"亮光标处单词在文件的所有位置,k激活
Plug 'lfv89/vim-interestingwords'

"Initialize plugin system
call plug#end()

" nerdtree设置
nnoremap <C-n> :NERDTree<CR>

let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }

"let g:NERDTreeGitStatusShowIgnored = 1 " a heavy feature may cost much more time. default: 0
"let g:NERDTreeGitStatusUseNerdFonts = 1 " you should install nerdfonts by yourself. default: 0
let g:NERDTreeGitStatusShowClean = 0 " default: 0
let g:NERDTreeGitStatusConcealBrackets = 1 " default: 0
let g:NERDTreeGitStatusUntrackedFilesMode = 'all' " a heavy feature too. default: normal
let g:NERDTreeGitStatusUseNerdFonts = 1 " you should install nerdfonts by yourself. default:uaua 0

let NERDTreeShowHidden=1
"显示文件的地址
let g:airline_section_c = '%<%F%m %#__accent_red#%{airline#util#wrap(airline#parts#readonly(),0)}%#__restore__#'



" 显示行号
"let NERDTreeShowLineNumbers=1
" 忽略一下文件的显示
let NERDTreeIgnore=['\.pyc','\~$','\.swp']

""当NERDTree为剩下的唯一窗口时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:plug_timeout=300

let g:airline_powerline_fonts = 1

set guifont=Powerline_Consolas:h14:cANSI

" 配色方案设置
colorscheme gruvbox
" @airline
set t_Co=256      "在windows中用xshell连接打开vim可以显示色彩
let g:airline#extensions#tabline#enabled = 1   " 是否打开tabline
"这个是安装字体后 必须设置此项"
let g:airline_powerline_fonts = 1
set laststatus=2  "永远显示状态栏
let g:airline_theme='powerlineish' "选择主题papercolor
let g:airline#extensions#tabline#enabled=1    "Smarter tab line:
"显示窗口tab和buffer
"let g:airline#extensions#tabline#left_sep = ' '  "separater
"let g:airline#extensions#tabline#left_alt_sep = '|'  "separater
"let g:airline#extensions#tabline#formatter = 'default'  "formater
let g:airline_left_sep = '▶'
let g:airline_left_alt_sep = '❯'
let g:airline_right_sep = '◀'
let g:airline_right_alt_sep = '❮'
" 设置缓冲区
set hidden
" 如果超过这个时间没有输入，将内容写入到磁盘
set updatetime=3
""""""'

"彩虹括号
let g:rainbow_active = 1

"vim-interestingwords 插件配置
let g:interestingWordsGUIColors = ['#8CCBEA', '#A4E57E', '#FFDB72', '#FF7272', '#FFB3FF', '#9999FF']
let g:interestingWordsTermColors = ['154', '121', '211', '137', '214', '222']
let g:interestingWordsRandomiseColors = 1

"indentline config
let g:indentLine_setColors = 0
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

map <leader><space> :FixWhitespace<cr>

let g:ImSelectEnable=1
"开启真色彩
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
 endif

" should markdown preview get shown automatically upon opening markdown buffer
let g:livedown_autorun = 0

" should the browser window pop-up upon previewing
let g:livedown_open = 1

" the port on which Livedown server will run
let g:livedown_port = 1337

" the browser to use, can also be firefox, chrome or other, depending on
let g:livedown_browser = "firefox"

nmap <leader>md :LivedownPreview<CR>
