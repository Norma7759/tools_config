filetype on	"检测文件类型
filetype indent on	"根据类型缩进
filetype plugin on	"加载有关的脚本
syntax on	"语法高亮
syntax enable
set encoding=utf-8	"编码
set fenc=utf-8
set nocompatible	"不兼容vi
set paste	"粘贴不自动缩进
set number	"绝对行号
set rnu		"相对行号
set wrap	"自动折行
set linebreak	"折行位置
set wildmenu	"menu提示
set cursorline	"定位
set cursorcolumn
set ruler	"实时位置
set laststatus=2	"显示状态行
set hlsearch	"搜索匹配高亮
set foldenable "启用折叠

"搜索完成后取消高亮	
exec "nohlsearch" 

set incsearch	"增强搜索
set ignorecase 	"大小写忽略
set foldmethod=indent	"代码折叠
set expandtab	"把tab替换为空格
set shiftwidth=4	"替换成4个空格
set autoindent	"自动缩进
set backspace=indent,eol,start	"定义退格键的功能
set list	"显示空白字符
set listchars=nbsp:¬,tab:··,trail:□
set autochdir	"自动切换到当前文件的目录
set scrolloff=5	"光标距离底部的行数
set background=dark

set gcr=a:block-blinkon0
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
set guioptions-=m
set guioptions-=T

"打开文件时回到上一次停留的位置-------------
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
"-------------------------------------------

