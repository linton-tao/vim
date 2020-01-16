set nocompatible           "关闭兼容模式
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle'}    "目录树，触发是才生成
Plug 'Xuyuanp/nerdtree-git-plugin'                        "目录树配置图标
Plug 'majutsushi/tagbar'
Plug 'ervandew/supertab'                                  "使Tab快捷键具有更快捷的上下文提示功能
Plug 'vim-airline/vim-airline-themes'                     "底部标签栏
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/syntastic'                               "语法识别
Plug 'scrooloose/nerdcommenter'                           "快速注释
Plug 'ctrlpvim/ctrlp.vim'                                   "文件搜索器
Plug 'cohlin/vim-colorschemes'                            "x-code主题
Plug 'tobyS/pdv'
Plug 'jacoborus/tender'                                   "tender主题
Plug 'SirVer/ultisnips'                                   "代码补全
Plug 'honza/vim-snippets'
Plug 'ConradIrwin/vim-bracketed-paste'                   "处理复制问题
Plug 'kien/ctrlp.vim'
call plug#end()


syntax enable 			        "语法高亮
syntax on	    		        "语法高亮

""""""""""""""""""""""""""""""""""""
"             基本设置             ”
""""""""""""""""""""""""""""""""""""
filetype plugin on		        "文件类型插件开启
filetype plugin indent on 	    "文件插件
set showtabline=2               "总是显示标签栏 
set laststatus=2                "总显示最后一个窗口的状态行

set wildmenu                    "vim 自身命令行模式智能补全
set nu 				            "显示行号
set ruler			            "在右下角显示光标的坐标
set ic 				            "忽略大小写查找
set smartcase 			        "搜索时大小写敏感
set hlsearch 			        "高亮显示搜索结果
set incsearch 			        "边输边搜，即时更新搜索结果
set showcmd 			        "在ruler左边显示当前正在输入的命令
set mouse=v 			        "鼠标可视

set nobackup                    "取消vim自动备份
set noswapfile

set scrolloff=10                "向下滚动保留10行显示
set noeb vb t_vb=               "取消报错闪烁和提醒响铃

"sql补全模式
let g:sql_type_default = 'mysql'

"光标显示行列
set cursorline
set cursorcolumn
hi CursorLine cterm=NONE ctermbg=black
hi Cursorcolumn cterm=NONE ctermbg=black"
hi WildMenu        guifg=#ffffff guibg=#FFB6C1 term=reverse


""""""""""""""""""""""""""""""""""""
"             基础键位             "
""""""""""""""""""""""""""""""""""""
"关闭文件
map fc :close<CR>
"关闭vim
map fq :quit<CR>
"竖切屏
map fs :split<CR>
"横切屏
map fvs :vsplit<CR>
"保存
map fd :w<CR>

"输入设置
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap ts $_GET['traceSql'] =1;<ESC>
inoremap sql $_GET['sql'] =1;<ESC>

"注释工具
let mapleader = ","             "设置前缀键

""""""""""""""""""""""""""""""""""""
"             缩进问题             "
""""""""""""""""""""""""""""""""""""
set expandtab 			        "将tab键改为空格，默认是8个
set tabstop=4                   "将tab键改为4个空格
set cindent                     "使用C语言的规则自动缩进
set shiftwidth=4                "自动缩进时，使用4个空格，默认是8个
set modeline                    "自动识别文件格式
set fdm=indent                  "代码折叠   gc折叠 go打开
set nofoldenable                "打开所有折叠
set smartindent                 "智能对齐
set backspace=2                 "高版本vim不兼容删除baspace 　设置 backspace可以删除任意字符


""""""""""""""""""""""""""""""""""""
"             颜色配置             "
""""""""""""""""""""""""""""""""""""
set t_Co=256                    "设置终端256色"
colorscheme tender

"底部状态栏
let g:airline_theme="cobalt2"
let g:Powerline_symbols = 'unicode'
"air_line顶栏开启
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.branch = '⎇'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'


if &term =~ '256color'
  " disable Background Color Erase (BCE) so that color schemes
  " render properly when inside 256-color tmux and GNU screen.
  " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif

if $TERM=="xterm-256color" && (has("termguicolors"))
    set termguicolors
endif




""""""""""""""""""""""""""""""""""""
"             插件设置             "
""""""""""""""""""""""""""""""""""""
"""""""""""插件快捷键""""""""""""

"上一个/下一个标签页切换的快捷键
nmap <F3> :TagbarToggle<CR>
nmap <F9> <ESC>:bp<RETURN>
nmap <F10> <ESC>:bn<RETURN>
nmap <F11> <ESC>:tabprevious<RETURN>
nmap <F12> <ESC>:tabnext<RETURN>


set tags=tags;/                 "允许进入项目根目录查找ctags

""""""""""""目录树设置""""""""""""
"tr打开目录树
map tr :NERDTreeToggle<CR>      
"au VimEnter * NERDTree " 启动vim开启目录树
let g:NERDTreeWinSize=17  "目录树宽度设置

""""nerdtree-git-plugin""""
let g:NERDTreeIndicatorMapCustom = {
            \ "Modified"  : "✹",
            \ "Staged"    : "✚",
            \ "Untracked" : "✭",
            \ "Renamed"   : "➜",
            \ "Unmerged"  : "═",
            \ "Deleted"   : "✖",
            \ "Dirty"     : "✗",
            \ "Clean"     : "✔︎",
            \ "Unknown"   : "?"
            \ }


""""""""""""""""SuperTab"""""""""""""""""""
let g:SuperTabRetainCompletionType=2
" 0 - 不记录上次的补全方式
" 1 - 记住上次的补全方式,直到用其他的补全命令改变它
" 2 - 记住上次的补全方式,直到按ESC退出插入模式为止


"""""""""""scrooloose/syntastic""""""""""""
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
let OmniCpp_MayCompleteArrow = 1


let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"

"php doc注释插件
source ~/.vim/company-doc.vim
source ~/.vim/php-doc.vim
nnoremap <C-K> :call PhpDocSingle()<CR>
vnoremap <C-K> :call PhpDocRange()<CR>
