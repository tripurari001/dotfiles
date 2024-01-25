" vim: set ft=vim:

"""""""""""""""""""""""""""""""""""""""""""""""
" settings witch are already enable on neovim "
"         to set a better defaults            "
"""""""""""""""""""""""""""""""""""""""""""""""

" Set syntax on
syntax on
filetype plugin indent on
set autoindent
" Set to auto read when a file is changed from the outside
set autoread
" allow backspacing over everything in insert mode
set backspace=indent,eol,start
" dont show @ symbol if last line dosent fit on screen
set display+=lastline
" Higlhight search
set hlsearch
" incrimental search
set incsearch
" set status line and show cursor position
set laststatus=2
" insert tab other than indention
set smarttab
" improve the terminal connection
set ttyfast
" visual autocomplete for command menu
set wildmenu
" Where it makes sense, remove a comment leader when joining lines.
set formatoptions+=j
"
set nolangnoremap
" show cursor position on status line
set ruler
" Show the (partial) command as it’s being typed
set showcmd

" Enable true color
if (has("termguicolors"))
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif


"""""""""""""""""""""""""""""""""""""""""""""""
"          Common mappings and settings       "
"""""""""""""""""""""""""""""""""""""""""""""""

" update screen only when needed
set lazyredraw

" allow emojis in vimrc
scriptencoding utf-16

" EOL of current buffer
set fileformats=unix,mac,dos

"allow other file to open without saving current
set hidden

"set path to find all file inside recursive
set path+=**

" set indention width to 2
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set shiftround       " Round indent to multiple of 'shiftwidth'

" More intuitive arrow movements
set whichwrap=b,~,<,>,[,],h,l

" Prevents inserting two spaces after punctuation on a join (J)
set nojoinspaces

" Don't break a line after a one-letter word. It's broken before it instead (if possible).
set formatoptions+=1

" Get help for word under cursor by pressing K
set keywordprg=:help

" Turn on line numbering. Turn it off with 'set nonumber'
set number
set relativenumber
set numberwidth=1

" No intro, suppress ins-completion messages, use [+] instead of [Modified]
set shortmess+=m

" Case insensitive search
set ignorecase

" Don't Wrap text instead show in one line
set nowrap

" If wrapping is enabled, wrap at word boundaries
set linebreak

" Highlight current line
set cursorline

" show one extra line in bottom
set scrolloff=5
set sidescrolloff=5

" for key mapping time wait
set timeoutlen=5000
set ttimeout
set ttimeoutlen=10  " This must be a low value for <esc>-key not to be confused with an <a-…> mapping

" utf-8 charset
set encoding=utf-8 nobomb

" to show invisible character as
set listchars=tab:▸\ ,trail:·,eol:¬,nbsp:_

" autocomplete settings
set completeopt+=menuone,noselect   " show menu for even 1 option

" :help i_CTRL_N  where to look when ctrl+n is pressed in insert mode
set complete=.,w,b,u,i

" show the current mode
set showmode

" treat dash separated words as a word text object
set iskeyword+=-

" New window goes below
set splitbelow

" New windows goes right
set splitright

" Write actual file everytime
set backupcopy=yes

" Character for CLI expansion (TAB-completion)
set wildchar=<TAB>
set wildignorecase

" ignore some system and temp file
set wildignore+=.DS_Store
set wildignore+=*.jpg,*.jpeg,*.gif,*.png,*.gif,*.psd,*.o,*.obj,*.min.js
set wildignore+=*/bower_components/*,*/node_modules/*,*/compiled/*,*/public/*
set wildignore+=*/smarty/*,*/vendor/*,*/.hg/*,*/.svn/*,*/.sass-cache/*,*/log/*,*/tmp/*,*/build/*,*/ckeditor/*,*/doc/*,*/source_maps/*,*/dist/*,*/cache/*

" use par to format text whitch is better than vim's internal formatter
set formatprg=par

" Remember undo across vim session
set undofile

" Centralize backups, swapfiles and undo history
set backupdir=~/dotfiles/vim/backups
set directory=~/dotfiles/vim/swaps
set undodir=~/dotfiles/vim/undo

" ######################################################
" ##########            key mapping          ###########
" ######################################################

" Set Leader key to 'Space button'
nnoremap <space> <Nop>
let g:mapleader=" "

" Smart way to move between windows
noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-h> <C-W>h
noremap <C-l> <C-W>l

set pastetoggle=<f9>

"Toggle spell check
noremap <leader>sp :set spell!<cr>

"clearing highlighted search
nnoremap <silent> <leader>/ :nohlsearch \| diffupdate<CR>

" Switch between the last two files
nnoremap <leader><leader> <C-^>

" command mode complition with <C-p> and <C-n>
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" Tab/shift-tab to indent/outdent in visual mode.
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" Keep selection when indenting/outdenting.
vnoremap > >gv
vnoremap < <gv

" Search for selected text
vnoremap * "xy/<C-R>x<CR>

" command typo mapping
cnoremap WQ wq
cnoremap Wq wq
cnoremap QA qa
cnoremap qA qa
cnoremap Q! q!

" Toggle White-space Changes in diff
nnoremap <leader>iw :call tp_util#toggleWhiteSpaceInDiffMode()<CR>

" Smooth scrolling that works both in terminal and in GUI Vim
nnoremap <silent> <c-u> :call tp_util#smoothScroll(1)<cr>
nnoremap <silent> <c-d> :call tp_util#smoothScroll(0)<cr>
" Scroll the viewport faster
nnoremap <c-e> <c-e><c-e>
nnoremap <c-y> <c-y><c-y>

" More Info About current file
nnoremap <c-g> 2<c-g>

" Remove ttailing space
nnoremap <silent> <leader>ts :call tp_util#removeTrailingSpace()<cr>

" Square bracket mappings (many of them inspired by Unimpaired)
nnoremap <silent> [a :<c-u><c-r>=v:count1<cr>prev<cr>
nnoremap <silent> ]a :<c-u><c-r>=v:count1<cr>next<cr>
nnoremap <silent> ]b :<c-u><c-r>=v:count1<cr>bn<cr>
nnoremap <silent> [b :<c-u><c-r>=v:count1<cr>bp<cr>
nnoremap <silent> ]q :<c-u><c-r>=v:count1<cr>cnext<cr>zz
nnoremap <silent> [q :<c-u><c-r>=v:count1<cr>cprevious<cr>zz
nnoremap <silent> ]Q :<c-u>clast<cr>zz
nnoremap <silent> [Q :<c-u>cfirst<cr>zz

" Window navigation
nnoremap <leader>1 1<c-w>w
nnoremap <leader>2 2<c-w>w
nnoremap <leader>3 3<c-w>w
nnoremap <leader>4 4<c-w>w
nnoremap <leader>5 5<c-w>w
nnoremap <leader>6 6<c-w>w
nnoremap <leader>7 7<c-w>w
nnoremap <leader>8 8<c-w>w
nnoremap <leader>9 9<c-w>w
nnoremap <leader>0 10<c-w>w

" Easier copy/pasting to/from OS clipboard
nnoremap gy "*y
vnoremap gy "*y
nnoremap gp "*p
vnoremap gp "*p
nnoremap gP "*P
vnoremap gP "*P
nnoremap gY "*Y


"""""""""""""""""""""""""""""""""""""""""""""""
" Auto commands                               "
"""""""""""""""""""""""""""""""""""""""""""""""

" Enable Statusline and mark if large file
let g:LargeFile = 20*1024*1024 "20MB

augroup tp_autocmds
  autocmd!
  " If a file is large, disable syntax highlighting and other stuff
  autocmd BufReadPre *
        \ let s = getfsize(expand("<afile>")) |
        \ if s > g:LargeFile || s == -2 |
        \   call tp_large_file#large(fnamemodify(expand("<afile>"), ":p")) |
        \ endif
augroup END
