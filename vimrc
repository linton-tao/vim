""""""""""""""""""""""""""""""""""""
"             基本设置             ”
""""""""""""""""""""""""""""""""""""
set encoding=utf-8
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
set lazyredraw


set nobackup                    "取消vim自动备份
set noswapfile
set signcolumn=number

set scrolloff=10                "向下滚动保留10行显示
set noeb vb t_vb=               "取消报错闪烁和提醒响铃
"sql补全模式
let g:sql_type_default = 'mysql'

"光标显示行列
set cursorline
set cursorcolumn
hi CursorLine cterm      = NONE ctermbg  = black
hi Cursorcolumn cterm    = NONE ctermbg  = black"
hi WildMenu        guifg = #ffffff guibg = #FFB6C1 term = reverse



""""""""""""""""""""""""""""""""""""
"             基础键位             "
""""""""""""""""""""""""""""""""""""
"关闭文件
map fc :bdelete<CR>
"关闭vim
map fq :quit<CR>
"竖切屏
map fs :split<CR>
"横切屏
map fvs :vsplit<CR>
"去掉虚线
map tt :IndentLinesToggle<CR>
"保存
map fd :w<CR>
map te :term<CR><c-w>L

map mm :Tabularize /=<CR>
map m> :Tabularize /=><CR>
map m/ :Tabularize ////<CR>

map ma :set mouse=a <CR>
"map mv :set mouse=v <CR>

inoremap <C-j> <Right>
inoremap <C-k> <Left>
"inoremap <C-k> <Up>
"inoremap <C-j> <Down>

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
Plug 'w0ng/vim-hybrid'                  " 背景色
Plug 'tomasr/molokai'                   " 背景色
Plug 'altercation/vim-colors-solarized' " 背景色
Plug 'morhetz/gruvbox'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle'} " 目录树，触发是才生成
Plug 'Xuyuanp/nerdtree-git-plugin'                     " 目录树配置图标
Plug 'mhinz/vim-startify'                              " 修改启动界面
Plug 'Yggdroot/indentLine'                             " 增加代码缩进线条
Plug 'vim-airline/vim-airline'                         " 底部标签栏
Plug 'vim-airline/vim-airline-themes'
Plug 'jacoborus/tender'                                   "tender主题

Plug 'ConradIrwin/vim-bracketed-paste'                   "处理复制问题
Plug 'majutsushi/tagbar'
Plug 'godlygeek/tabular'                                          " 代码对齐工具
Plug 'scrooloose/nerdcommenter'                                   " 快速注释
Plug 'ctrlpvim/ctrlp.vim'                                         " 文件搜索器
Plug 'easymotion/vim-easymotion'                                  " 快速定位
Plug 'tpope/vim-surround'                                         " 成对编辑
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " 模糊查询
Plug 'junegunn/fzf'                                               " 模糊查询
Plug 'junegunn/fzf.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'honza/vim-snippets'
""前端相关组件 废弃
Plug 'buoto/gotests-vim'
Plug 'Chiel92/vim-autoformat'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'neoclide/vim-jsx-improve'

Plug 'skywind3000/asyncrun.vim'
Plug 'eshion/vim-sync'


"Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
call plug#end()




""""""""""""""""""""""""""""""""""""
"             颜色配置             "
""""""""""""""""""""""""""""""""""""
set t_Co=256                    "设置终端256色"
"colorscheme tender

""""""""""""""hybrid""""""""""""""""""""""
"let g:hybrid_custom_term_colors = 1
"let g:hybrid_reduced_contrast = 1 " Remove this line if using the default palette.
"colorscheme hybrid

colorscheme gruvbox

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

"if $TERM=="xterm-256color" && (has("termguicolors"))
    "set termguicolors
"endif



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
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      "\ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

"使用 <cr> 确认补全：
let g:coc_snippet_next = '<c-j>'

" Formatting selected code.格式化格式化代码
xmap <leader>f  <Plug>(coc-format-selected)
noremap <leader>3 :Autoformat<CR>
xmap <leader>p  <Plug>(coc-format)

call coc#add_extension('coc-json', 'coc-phpls', 'coc-snippets', 'coc-vetur', 'coc-eslint')
" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

""""""""""majutsushi/tagbar"""""""""

"上一个/下一个标签页切换的快捷键
nmap <F3> :TagbarToggle<CR>
nmap <leader>1 <ESC>:bp<RETURN>
nmap <leader>2 <ESC>:bn<RETURN>
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

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }
"let g:Tlist_Ctags_Cmd='/usr/local/Cellar/ctags/5.8_2/bin/ctags'
let g:Tlist_Ctags_Cmd='/opt/homebrew/bin/ctags'

"""""""""""文件搜索器"""""""""""""""
let g:ctrlp_map = '<c-p>'


"""""""""""文件搜索器"""""""""""""""
nmap ss <Plug>(easymotion-s2)


""""""Yggdroot / indentLine""""""""
:set list lcs=tab:\|\     "空格
let g:indentline_setcolors = 0
let g:indentline_bgcolor_term = 202
let g:indentline_bgcolor_gui = '#ff5f00'
let g:indentLine_char = 'c'
let g:indentLine_char_list = ['|', '¦', '┆', '┊']


let g:go_fmt_command = "goimports"

let g:go_test_show_name = 0

au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test-func)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>ge <Plug>(go-rename)　


"autocmd BufWritePre *.go :Fmt
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

let g:gotests_bin = '/Users/duoduo/go/bin/gotests'


"php doc注释插件
source ~/.vim/company-doc.vim
source ~/.vim/php-doc.vim
nnoremap <C-K> :call PhpDocSingle()<CR>
vnoremap <C-K> :call PhpDocRange()<CR>
".vim/plugged/coc.nvim/plugin/coc.vim jumpDefinition 改成cocActionAsync
hi Normal  ctermfg=252 ctermbg=none
hi Nontext  ctermfg=252 ctermbg=none



" brew install ctags
let g:sync_exe_filenames = '.sync;' " Looks backward for a file named ".sync"
"nnoremap <C-U> <ESC>:call SyncUploadFile()<CR>
autocmd BufWritePost * :call SyncUploadFile()


vnoremap <silent> <C-T> :<C-u>Ydv<CR>
nnoremap <silent> <C-T> :<C-u>Ydc<CR>
noremap <leader>yd :<C-u>Yde<CR>

