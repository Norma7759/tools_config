filetype on	"检测文件类型
filetype indent on	"根据类型缩进
filetype plugin on	"加载有关的脚本
syntax on	"语法高亮
syntax enable
set lazyredraw
set termguicolors  "真彩色
colorscheme monokai
set encoding=utf-8	"编码
set fenc=utf-8
set nocompatible	"不兼容vi
set number	"绝对行号
set rnu		"相对行号
set wrap	"自动折行
set linebreak	"折行位置
set wildmenu	"menu提示
set cursorline	"定位
set cursorcolumn
set laststatus=0
set ruler	"实时位置
set hlsearch	"搜索匹配高亮
set foldenable "启用折叠
set incsearch	"增强搜索
set ignorecase 	"大小写忽略
set foldmethod=syntax "代码折叠
set expandtab	"把tab替换为空格
set shiftwidth=4	"替换成4个空格
set autoindent	"自动缩进
set backspace=indent,eol,start	"定义退格键的功能
set list	"显示空白字符
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

"vim-plug for neovim------------------------
"for linux: sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
"for windows: iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |` ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force

if has ("win32")
  let g:plug_address = '$HOME/AppData/Local/nvim/plugged'
else
  let g:plug_address = '~/.config/nvim/plugged'
endif


call plug#begin(plug_address)
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sickill/vim-monokai'
Plug 'Yggdroot/indentLine'
Plug 'bling/vim-bufferline'
Plug 'jiangmiao/auto-pairs'
Plug 'easymotion/vim-easymotion'
Plug 'preservim/nerdtree'
Plug 'mhinz/vim-startify'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'preservim/nerdcommenter'
Plug 'junegunn/vim-easy-align'
Plug 'christoomey/vim-tmux-navigator'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

let g:airline_symbols_ascii = 1
let g:airline#extensions#tabline#enabled = 0
let g:airline_inactive_collapse=1
let g:airline_statusline_ontop = 0
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:indentLine_enabled = 1
let g:AutoPairs = {'<':'>','(':')', '[':']', '{':'}',"'":"'",'"':'"', "`":"`", '```':'```', '"""':'"""', "'''":"'''"}
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_concepts_highlight = 1
let g:cpp_experimental_template_highlight = 1
