""""""""""""""""""""""""""""""""""""
"             基本设置             ”
""""""""""""""""""""""""""""""""""""
set nocompatible           "关闭兼容模式
syntax enable 			        "语法高亮
filetype plugin indent on 	    "文件插件
set showtabline=2               "总是显示标签栏 
set laststatus=2                "总显示最后一个窗口的状态行

set wildmenu                    "vim 自身命令行模式智能补全
set nu 				            "显示行号
set ruler			            "在右下角显示光标的坐标
set ic 		      	            "忽略大小写查找
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
"inoremap ts $_GET['traceSql'] =1;<ESC>
"inoremap sql $_GET['sql'] =1;<ESC>

"注释工具
let mapleader = ","             "设置前缀键

"切换
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

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
"             缩进问题             "
""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle'}    "目录树，触发是才生成
Plug 'Xuyuanp/nerdtree-git-plugin'                        "目录树配置图标
Plug 'mhinz/vim-startify'                                "修改启动界面
Plug 'Yggdroot/indentLine'                                "增加代码缩进线条
Plug 'vim-airline/vim-airline'                          "底部标签栏
Plug 'vim-airline/vim-airline-themes'
Plug 'jacoborus/tender'                                   "tender主题

Plug 'ConradIrwin/vim-bracketed-paste'                   "处理复制问题
Plug 'majutsushi/tagbar'                   
Plug 'scrooloose/nerdcommenter'                           "快速注释
Plug 'ctrlpvim/ctrlp.vim'                                   "文件搜索器
Plug 'easymotion/vim-easymotion'                                   "快速定位
Plug 'tpope/vim-surround'                                   "成对编辑
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }  "模糊查询 
Plug 'junegunn/fzf'               "模糊查询 
Plug 'junegunn/fzf.vim'
"Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'honza/vim-snippets'
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
call plug#end()




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
  set t_ut=
endif

if $TERM=="xterm-256color" && (has("termguicolors"))
    set termguicolors
endif



""""""""""""""""""""""""""""""""""""
"             插件设置             "
""""""""""""""""""""""""""""""""""""
"""""""""""插件快捷键"""""""""""""""

"""""""""""""coc快捷键""""""""""""""
"set modeline "识别文件modeline
imap <C-l> <Plug>(coc-snippets-expand)
"跳转到定义位置
nmap <C-]> <Plug>(coc-definition)
"跳转到引用位置
nmap <C-i> <Plug>(coc-references)
" 跳转到错误位置
nmap <leader>e <Plug>(coc-diagnostic-next)


" 检查上前一个位置是否为空格
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction


" tab键进行多次映射
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
"使用 <cr> 确认补全：
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<CR>"

call coc#add_extension('coc-json', 'coc-phpls', 'coc-snippets')



""""""""""majutsushi/tagbar"""""""""

"上一个/下一个标签页切换的快捷键
nmap <F3> :TagbarToggle<CR>
nmap <F9> <ESC>:bp<RETURN>
nmap <F10> <ESC>:bn<RETURN>
nmap <F11> <ESC>:tabprevious<RETURN>
nmap <F12> <ESC>:tabnext<RETURN>
""""""""""""目录树设置""""""""""""""
"tr打开目录树
map tr :NERDTreeToggle<CR>      
let g:NERDTreeWinSize=17  "目录树宽度设置

"""""""""nerdtree-git-plugin""""""""
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




"""""""""""文件搜索器"""""""""""""""
let g:ctrlp_map = '<c-p>'


"""""""""""文件搜索器"""""""""""""""
nmap ss <Plug>(easymotion-s2)


""""""Yggdroot / indentLine""""""""
:set list lcs=tab:\|\ 
"let g:indentLine_setColors = 0
"let g:indentLine_bgcolor_term = 202
"let g:indentLine_bgcolor_gui = '#FF5F00'
let g:indentLine_char = 'c'
let g:indentLine_char_list = ['|', '¦', '┆', '┊']




source ~/.vim/company-doc.vim
 "php doc注释插件
source ~/.vim/php-doc.vim
nnoremap <C-K> :call PhpDocSingle()<CR>
vnoremap <C-K> :call PhpDocRange()<CR>
