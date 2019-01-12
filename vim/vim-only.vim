"""""""""""""""""""""""""""""""""""""""""""""""
" settings witch are already enable on neovim "
"""""""""""""""""""""""""""""""""""""""""""""""

" enter into modern mode
set nocompatible
" Set syntax on
syntax on
filetype plugin indent on
set autoindent
" Set to auto read when a file is changed from the outside
set autoread
" allow backspacing over everything in insert mode
set backspace=indent,eol,start
" scan for autocompletion
set complete-=i
" dont show @ symbol if last line dosent fit on screen
set display+=lastline
" Higlhight search
set hls
" incrimental search
set incsearch
" set status line and show cursor position
set laststatus=2
" insert tab other than indention
"set smarttab
" improve the terminal connection
set ttyfast
" visual autocomplete for command menu
set wildmenu
