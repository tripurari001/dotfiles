" update screen only when needed
set lazyredraw

" allow emojis in vimrc
scriptencoding utf-16

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
set shiftround       " Round indent to multiple of 'shiftwidth'

" Turn on line numbering. Turn it off with 'set nonumber'
set number
set relativenumber
set numberwidth=1

" Show the (partial) command as it’s being typed
set showcmd

" Case insensitive search
set ignorecase

" Don't Wrap text instead show in one line
set nowrap

"color scheme
set t_Co=256
set background=dark        " for the light version
colorscheme one
let g:one_allow_italics = 1 " I love italic for comments

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

" treat dash separated words as a word text object
set iskeyword+=-

" New window goes below
set splitbelow

" New windows goes right
set splitright

" Always use vertical diffs
set diffopt+=vertical,iwhite

" Character for CLI expansion (TAB-completion)
set wildchar=<TAB> 
set wildignorecase

" ignore some system and temp file 
set wildignore+=.DS_Store
set wildignore+=*.jpg,*.jpeg,*.gif,*.png,*.gif,*.psd,*.o,*.obj,*.min.js
set wildignore+=*/bower_components/*,*/node_modules/*,compiled
set wildignore+=*/smarty/*,*/vendor/*,*/.git/*,*/.hg/*,*/.svn/*,*/.sass-cache/*,*/log/*,*/tmp/*,*/build/*,*/ckeditor/*,*/doc/*,*/source_maps/*,*/dist/*,*/cache/*

" twig template highlighting jinja 
autocmd BufNewFile,BufRead *.twig set ft=jinja

" use par to format text whitch is better than vim's internal formatter
set formatprg=par

if has('persistent_undo')
  set undofile
endif

" Centralize backups, swapfiles and undo history
set backupdir=~/.trippcconfig/vim/backups
set directory=~/.trippcconfig/vim/swaps
set undodir=~/.trippcconfig/vim/undo

"$$$$$$$$$$$$$$$$$$$$ shortcuts $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$

" Set Leader key to '\'
let g:mapleader="\\"

" alias for leader key
nmap <space> \
xmap <space> \

" Smart way to move between windows
noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-h> <C-W>h
noremap <C-l> <C-W>l


"Remap j and k to act as expected when used on long, wrapped, lines
nnoremap j gj
nnoremap k gk

"Quick yanking to the end of the line
nnoremap Y y$

" NERDTree settings
nnoremap <leader>d :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>
nnoremap <leader>b :CtrlPBuffer<CR>

"Toggle spell check
noremap <leader>ss :set spell!<cr>

"clearing highlighted search
nnoremap <silent> <leader>/ :nohlsearch<CR>

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

" copy to system clipboard
noremap gy "+y

" command typo mapping
cnoremap WQ wq
cnoremap Wq wq
cnoremap QA qa
cnoremap qA qa
cnoremap Q! q!

" Toggle White-space Changes in diff
nnoremap <leader>iw :call IwhiteToggle()<CR>
function! IwhiteToggle()
  if &diffopt =~ 'iwhite'
    set diffopt-=iwhite
  else
    set diffopt+=iwhite
  endif
endfunction


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
