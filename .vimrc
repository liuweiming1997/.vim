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
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set incsearch     " do incremental searching
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands
set fileencodings=utf-8,gb18030,gbk,big5


" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

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
filetype plugin indent on
" 插件管理器


map <F2> :NERDTreeToggle<CR>

" refer http://www.ruanyifeng.com/blog/2018/09/vimrc.html
set nowrap
set showmatch
set hlsearch
set ignorecase
set smartcase
set wildmenu
set wildmode=longest:list,full



