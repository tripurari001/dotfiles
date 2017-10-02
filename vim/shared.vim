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
"set background=dark
if has("nvim")
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
set termguicolors
colorscheme deep-space

" Highlight current line
set cursorline

" show one extra line in bottom
set scrolloff=5
set sidescrolloff=5

" for key mapping time wait
set ttimeout
set ttimeoutlen=200

" utf-8 charset
set encoding=utf-8 nobomb

" to show invisible character as
set listchars=tab:▸\ ,trail:·,eol:¬,nbsp:_

" turn on spelling check
set spell

" show the current mode
set showmode

" New window goes below
set splitbelow

" New windows goes right
set splitright

" Character for CLI expansion (TAB-completion)
set wildchar=<TAB> 

" ignore some system and temp file 
set wildignore+=.DS_Store
set wildignore+=*.jpg,*.jpeg,*.gif,*.png,*.gif,*.psd,*.o,*.obj,*.min.js
set wildignore+=*/bower_components/*,*/node_modules/*
set wildignore+=*/smarty/*,*/vendor/*,*/.git/*,*/.hg/*,*/.svn/*,*/.sass-cache/*,*/log/*,*/tmp/*,*/build/*,*/ckeditor/*,*/doc/*,*/source_maps/*,*/dist/*,*/cache/*

" twig template highlighting jinja 
autocmd BufNewFile,BufRead *.twig set ft=jinja

"Set comment string
"autocmd BufNewFile,BufRead *.html,*.htm,*.shtml,*.stm setlocal commentstring=<!--\ %s\ -->
autocmd BufNewFile,BufRead *.twig setlocal commentstring={#\ %s\ #}
