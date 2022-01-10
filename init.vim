filetype on	"检测文件类型
filetype indent on	"根据类型缩进
filetype plugin on	"加载有关的脚本
syntax on	"语法高亮
syntax enable
set ambiwidth=double
set showmatch
set lazyredraw
set termguicolors  "真彩色
colorscheme monokai
set encoding=utf-8	"编码
set fenc=utf-8
set nocompatible	"不兼容vi
set exrc
set secure
set hidden
set updatetime=100
set shortmess+=c
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
set smartcase
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
"键位设置---------------------------------------
let mapleader = "\<space>"
nnoremap g<leader> G
nnoremap - <c-d>
nnoremap = <c-u>

nnoremap sl :vs 
nnoremap sj :sp 

noremap <leader><up> :res -5<CR>
noremap <leader><down> :res +5<CR>
noremap <leader><left> :vertical resize-5<CR>
noremap <leader><right> :vertical resize+5<CR>


nnoremap gh ^
nnoremap gl $

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
Plug 'jiangmiao/auto-pairs'
Plug 'easymotion/vim-easymotion'
Plug 'preservim/nerdtree'
Plug 'mhinz/vim-startify'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'preservim/nerdcommenter'
Plug 'junegunn/vim-easy-align'
Plug 'christoomey/vim-tmux-navigator'
Plug 'luochen1990/rainbow'
Plug 'neoclide/coc.nvim',{'branch':'release'}
call plug#end()

let g:airline_theme = 'desertink'
let g:airline_symbols_ascii = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 0
let g:airline_statusline_ontop = 0
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_section_c = airline#section#create([''])
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#buffer_idx_format = {
            \'0': '0 ',
            \'1': '1 ',
            \'2': '2 ',
            \'3': '3 ',
            \'4': '4 ',
            \'5': '5 ',
            \'6': '6 ',
            \'7': '7 ',
            \'8': '8 ',
            \'9': '9 '}
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>0 <Plug>AirlineSelectTab0
nmap q :bd<CR>

let g:rainbow_active = 1
let g:rainbow_conf = {
\ 'guifgs' : ['Red', 'Orange', 'Yellow', 'SeaGreen'],
\ 'ctermfgs' : ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
\ 'separately': {
\ '*' : {},
\  }
\}

let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1

let g:indentLine_enabled = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2

let g:AutoPairs = {'<':'>','(':')', '[':']', '{':'}',"'":"'",'"':'"', "`":"`", '```':'```', '"""':'"""', "'''":"'''"}

let g:NERDTreeWinSize = 25
let NERDTreeShowBookmarks=1
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
let NERDTreeIgnore = ['.pyc$']
let g:NERDTreeHidden = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
nnoremap ` :NERDTreeToggle<CR>

let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_concepts_highlight = 1
let g:cpp_experimental_template_highlight = 1
" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
            \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif


let g:coc_global_extensions = ['coc-marketplace', 'coc-clangd', 'coc-clang-format-style-options', 'coc-cmake', 'coc-pyright']

"Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-space> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nnoremap <silent> <c-.> <Plug>(coc-diagnostic-prev)
nnoremap <silent> <c-,> <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nnoremap <silent> gd <Plug>(coc-definition)
nnoremap <silent> gy <Plug>(coc-type-definition)
nnoremap <silent> gi <Plug>(coc-implementation)
nnoremap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')
" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)
" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

