" update screen only when needed
set lazyredraw

" show cursor position on status line 
set ruler

"allow other file to open without saving current
set hidden

"set path to find all file inside recursive 
set path+=**

" set indention width to 2 
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smartindent

" Turn on line numbering. Turn it off with 'set nonumber'
set number
set relativenumber

" Show the (partial) command as it’s being typed
set showcmd

" Case insensitive search
set ignorecase

" Wrap text instead of being on one line
set linebreak

"color scheme
set t_Co=256
set termguicolors
let ayucolor="mirage" " for mirage version of theme
colorscheme ayu

" Highlight current line
set cursorline

" show one extra line in bottom
set scrolloff=5
set sidescrolloff=5

" for key mapping time wait
set ttimeout
set ttimeoutlen=300

" utf-8 charset
set encoding=utf-8 nobomb

" to show invisible character as
set listchars=tab:▸\ ,trail:·,eol:¬,nbsp:_

" turn on spelling check
"set spell

" show the current mode
set showmode

" New window goes below
set splitbelow

" New windows goes right
set splitright

" Character for CLI expansion (TAB-completion)
set wildchar=<TAB> 
set wildignorecase

" ignore some system and temp file 
set wildignore+=.DS_Store
set wildignore+=*.jpg,*.jpeg,*.gif,*.png,*.gif,*.psd,*.o,*.obj,*.min.js
set wildignore+=*/bower_components/*,*/node_modules/*
set wildignore+=*/smarty/*,*/vendor/*,*/.git/*,*/.hg/*,*/.svn/*,*/.sass-cache/*,*/log/*,*/tmp/*,*/build/*,*/ckeditor/*,*/doc/*,*/source_maps/*,*/dist/*,*/cache/*

" twig template highlighting jinja 
autocmd BufNewFile,BufRead *.twig set ft=jinja

" use par to format text whitch is better than vim's internal formatter
set formatprg=par

"$$$$$$$$$$$$$$$$$$$$ shortcuts $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$

" Set Leader key to ','
let mapleader = ","
let g:mapleader=','

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l


"Remap j and k to act as expected when used on long, wrapped, lines
nnoremap j gj
nnoremap k gk

"Quick yanking to the end of the line
nnoremap Y y$

" NERDTree settings
nnoremap <leader>d :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>

"Toggle spell check
map <leader>ss :set spell!<cr>

"clearing highlighted search
nmap <silent> <leader>/ :nohlsearch<CR>

" Switch between the last two files
nnoremap <Leader><Leader> <C-^>

" command mode complition with <C-p> and <C-n>
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>


"$$$$$$$$$$$$$$$$$$$$ shortcuts end $$$$$$$$$$$$$$$$$$$$$$$$$$$$




"$$$$$$$$$$$$$$$$$$$$ color scheme for diff mode $$$$$$$$$$$$$$$$$$$$$$$$$$$$

highlight DiffAdd    cterm=bold ctermfg=0    ctermbg=2    gui=bold    guifg=#232834 guibg=#A6CC70
highlight DiffDelete cterm=bold ctermfg=0    ctermbg=203  gui=bold    guifg=#232834 guibg=#F27983
highlight DiffChange cterm=bold ctermfg=0    ctermbg=11   gui=bold    guifg=#232834 guibg=#FFCC66
highlight DiffText   cterm=bold ctermfg=0    ctermbg=32   gui=bold    guifg=#232834 guibg=#77A8D9


"    cterm - sets the style
"    ctermfg - set the text color
"    ctermbg - set the highlighting
"    DiffAdd - line was added
"    DiffDelete - line was removed
"    DiffChange - part of the line was changed (highlights the whole line)
"    DiffText - the exact part of the line that changed

"$$$$$$$$$$$$$$$$$$$$ color scheme for diff mode end $$$$$$$$$$$$$$$$$$$$$$$$$$$$
