" Highlight current line
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline 
"set cursorcolumn

" Leader
let mapleader = ","

set backspace=2   " Backspace deletes like most programs in insert mode
set nobackup
set nowritebackup
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set history=50
set ruler         " 显示当前行号列号，在右下角
set showcmd       " 在状态栏显示正在输入的命令  
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands
set fileencodings=utf-8,gb18030,gbk,big5
set so=7 " 使用j/k移动的时候，始终在中间


" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab " 将Tab自动转化成空格    [需要输入真正的Tab键时，使用 Ctrl+V + Tab]  



" Display extra whitespace
set list listchars=tab:»·,trail:·

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

"let g:rehash256 = 1

"dark colorm
set t_Co=256
set background=dark

highlight NonText guibg=#060606
highlight Folded  guibg=#0A0A0A guifg=#9090D0

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1

" Numbers
set number
set numberwidth=5

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright




" vimi config..................... 
syntax on

" Use Vim settings, rather then Vi settings. This setting must be as early as
" possible, as it has side effects.
" 插件管理器
if filereadable(expand("~/.vim/plugin"))
    source ~/.vim/plugin
endif
" 插件管理器


map <F3> :NERDTreeToggle<CR>

" refer http://www.ruanyifeng.com/blog/2018/09/vimrc.html
set nowrap
set showmatch

"高亮search命中的文本
set hlsearch

" 搜索时忽略大小写 
set ignorecase

" 输入时立马搜索
set incsearch     " do incremental searching

" 有一个或以上大写字母时仍大小写敏感  
set smartcase
set wildmenu
set wildmode=longest:list,full



 "Tagbar
let g:tagbar_width=35
let g:tagbar_autofocus=1
let g:tagbar_right = 1
nmap <F4> :TagbarToggle<CR>


if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif

let g:Powerline_symbols = 'fancy'
set encoding=utf-8 
set laststatus=2

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

"括号配对情况  
set showmatch  
" How many tenths of a second to blink when matching brackets  
set mat=2  
