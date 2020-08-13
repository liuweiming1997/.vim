
"Highlight current line
"高亮行
set cursorline
"高亮列
"set cursorcolumn
"自定义CSS
"hi cursorline   cterm=NONE ctermbg=black ctermfg=NONE guibg=NONE guifg=NONE
"hi cursorcolumn   cterm=NONE ctermbg=black ctermfg=NONE guibg=NONE guifg=NONE

" Leader
let mapleader = ","

" 在苹果里面，不设置这个不能使用delete键
set backspace=2   " Backspace deletes like most programs in insert mode

"禁止生成临时文件
set nobackup
set nowritebackup
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
" 上面的都是用来解决如果弄一个文件，别人又继续新建了的

set history=2000
set ruler         " 显示当前行号列号，在右下角
set showcmd       " 在状态栏显示正在输入的命令  
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands
set fileencodings=utf-8,gb18030,gbk,big5

"智能缩进
set autoindent
set smartindent

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab " 将Tab自动转化成空格    [需要输入真正的Tab键时，使用 Ctrl+V + Tab]

" Display extra whitespace
" 显示额外的空白，头部，尾部
set list listchars=tab:——,trail:·

"dark colorm
set t_Co=256 "在windows中用xshell连接打开vim可以显示色彩
set background=dark

"highlight NonText guibg=#060606
"highlight Folded  guibg=#0A0A0A guifg=#9090D0

" Numbers
set number
set numberwidth=5

" vimi config
syntax on

" Use Vim settings, rather then Vi settings. This setting must be as early as
" possible, as it has side effects.
" 插件管理器
if filereadable(expand("~/.vim/plugin"))
    source ~/.vim/plugin
endif
" 插件管理器


"设置默认不换行
set nowrap

"输入括号的时候，帮你自动match上一个,
"其实shift + 5就可以找回上一个了
set showmatch
"匹配括号高亮的时间（单位是十分之一秒）"
set mat=1

"高亮search命中的文本
set hlsearch

" 搜索时忽略大小写 
set ignorecase

" 输入时立马搜索
set incsearch     " do incremental searching

" 有一个或以上大写字母时仍大小写敏感
set smartcase
"按下tab键默认选下一个
set wildmenu

"Tagbar
" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" refer http://www.ruanyifeng.com/blog/2018/09/vimrc.html
map <F3> :NERDTreeToggle<CR>

"检测文件类型
filetype on
"针对不同的文件类型采用不同的缩进格式
filetype indent on
"启动自动补全
filetype plugin indent on
"允许插件
filetype plugin on

"为方便复制，用<F5>开启/关闭行号显示:  
nnoremap <F5> :set nonumber!<CR>:set foldcolumn=0<CR>

"这个是安装字体后 必须设置此项"
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'
let g:airline_theme="bubblegum"
"打开tabline功能,方便查看Buffer和切换,省去了minibufexpl插件
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
" 关闭状态显示空白符号计数
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#symbol = '!'

"设置切换Buffer快捷键"
nnoremap <C-PageUp> :bn<CR>
nnoremap <C-PageDown> :bp<CR>

"设置删除快捷键
nnoremap da i<C-w><ESC>

"移动光标
nmap lh ^
nmap le $

nnoremap <leader>S : ! subl % <CR>

"退出写入快捷键
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>a :q!<CR>

"nerdTree change
nnoremap <leader> <C-w>

" 是否显示隐藏文件
let NERDTreeShowHidden=1
" 显示书签列表
let NERDTreeShowBookmarks=1
" 忽略一下文件的显示
let NERDTreeIgnore=['\.pyc','\~$','\.swp']

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✗",
    \ "Staged"    : "✚",
    \ "Untracked" : "???",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "dirty",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

"记住上次编辑位置
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set mouse=a
set selection=exclusive
set selectmode=mouse,key

set report=0

" copy and paste
"vnoremap y "+y
"nnoremap yy "+yy
"共享剪切板"
set clipboard^=unnamed,unnamedplus

"find the file path
nnoremap <leader>r <ESC>:NERDTreeFind<CR>

"cancle mode
nnoremap <C-z> <C-r>

nnoremap <Leader>s :<C-u>call gitblame#echo()<CR>

"for vim fzf
set rtp+=~/.fzf
"ctrl + space
"nnoremap <NUL> <ESC>:Files<CR>
nnoremap <NUL> <ESC>:FZF --preview=head\ -20\ {}<CR>
nnoremap <C-r> <ESC>:History<CR>
"source ~/.vim/bundle/fzf.vim

" ctags
" gutentags搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归 "
let g:gutentags_project_root = ['.root', '.svn', '.git', '.project']

" 所生成的数据文件的名称 "
let g:gutentags_ctags_tagfile = '.tags'
let g:gutentags_file_list_command = 'fd --type f --hidden --follow --exclude .git'

" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录 "
let s:vim_tags = expand('~/.cache/ctags')
let g:gutentags_cache_dir = s:vim_tags
" 检测 ~/.cache/tags 不存在就新建 "
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif

nnoremap <C-i> <C-]>
nnoremap <C-h> <C-t>

" 配置 ctags 的参数 "
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+pxI']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']

nnoremap <leader>f :call Yapf(0)<CR>
vnoremap <leader>f :call Yapf(1)<CR>

"function
function! Yapf(visual) range
    if expand('%') =~ '.py'
        :w
        if a:visual == 1
            let f = system('yapf --style "{based_on_style: google, column_limit:100}" --lines ' . a:firstline . '-' . a:lastline . ' ' . expand('%'))
        else
            let f = system('yapf --style "{based_on_style: google, column_limit:100}" ' . expand('%'))
        endif
        if l:f =~ '^Traceback'
            echo l:f
            return
        endif
        let cp = getpos(".")
        normal! ggdG
        put =l:f
        normal! ggdd
        call setpos('.', l:cp)
    else
        echo 'Not py file'
    endif
endfunction
