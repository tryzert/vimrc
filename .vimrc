set ai 
set autoindent                  " 设置自动缩进：即每行的缩进值与上一行相等；使用 noautoindent 取消设置
set nu
set number                      " 屏幕左边显示行号
"set noshowmatch                 " 显示括号配对，当键入“]”“)”时，高亮度显示匹配的括号
let loaded_matchparen = 1		" 取消自动括号匹配高亮
set showmode                    " 处于文本输入方式时加亮按钮条中的模式指示器
filetype plugin on              " 自动识别文件类型，自动匹配对应的, “文件类型Plugin.vim”文件，使用缩进定义文件
set cindent                     " 以C/C++的模式缩进
set noignorecase                " 默认区分大小写
set ruler                       " 打开状态栏标尺
set scrolloff=5                 " 设定光标离窗口上下边界 5 行时窗口自动滚动
set shiftwidth=4                " 设定 << 和 >> 命令移动时的宽度为 4
set softtabstop=4               " 使得按退格键时可以一次删掉 4 个空格,不足 4 个时删掉所有剩下的空格）
set tabstop=4                   " 设定 tab 长度为 4
set wrap                        " 自动换行显示
set encoding=utf-8				" utf-8编码
set cursorline					" 突出显示当前行
syntax enable
syntax on                       " 自动语法高亮

colorscheme molokai				" 主题
let g:molokai_original = 1
let g:rehash256 = 1

" 设置vim背景透明，这里设置不起作用，应该在主题里设置
set background=dark



"自动补全括号并且换行
inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
" inoremap { {<CR>}<ESC>O
inoremap { {}<ESC>i
"插入模式下，ctrl+k/j直接在上/下新开一行
"inoremap <C-CR> <ESC>o
inoremap <c-j> <ESC>o
inoremap ,. <ESC>o
inoremap <c-k> <ESC>O
"插入模式下，定位到行首和行尾
inoremap ,h <ESC>^i
inoremap ,l <ESC>$i



"vim内部多窗口切换
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k

"---------------------------vim-plug--------------------------------------
"vim-plug  vim插件管理器
call plug#begin('~/.vim/plugged')

"vim 打开奶牛界面，美化
Plug 'mhinz/vim-startify'

"vim 缩进线
Plug 'Yggdroot/indentLine'

"vim 左端显示文件目录树
Plug 'preservim/nerdtree'

"python-mode python代码编写插件
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }

"vim-go golang代码编写插件
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()
"---------------------------vim-plug--------------------------------------
