" Normal Settings {{{

" update screen only when needed
set lazyredraw

" allow emojis in vimrc
scriptencoding utf-16

" EOL of current buffer
set fileformats=unix,mac,dos

if has('langmap') && exists('+langremap') | set nolangremap | endif

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

" More intuitive arrow movements
set whichwrap=b,~,<,>,[,],h,l

" Prevents inserting two spaces after punctuation on a join (J)
set nojoinspaces

" Do not wrap after a one-letter word and remove extra comment when joining lines
set formatoptions+=1j

" Get help for word under cursor by pressing K
set keywordprg=:help

" Turn on line numbering. Turn it off with 'set nonumber'
set number
set relativenumber
set numberwidth=1

" Show the (partial) command as it’s being typed
set showcmd

" No intro, suppress ins-completion messages, use [+] instead of [Modified]
set shortmess+=Icm

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
set completeopt+=menuone   " show menu for even 1 option

" :help i_CTRL_N  where to look when ctrl+n is pressed in insert mode
set complete=.,w,b,u,i

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

" Write actual file everytime
set backupcopy=yes

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

" use par to format text whitch is better than vim's internal formatter
set formatprg=par

if has('persistent_undo')
  set undofile
endif

" Centralize backups, swapfiles and undo history
set backupdir=~/.trippcconfig/vim/backups
set directory=~/.trippcconfig/vim/swaps
set undodir=~/.trippcconfig/vim/undo

" }}}
" shortcuts {{{

" Set Leader key to '\'
let g:mapleader="\\"

" alias for leader key
nmap <space> <leader>
xmap <space> <leader>

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
nnoremap <leader>ne :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>
nnoremap <leader>b :CtrlPBuffer<CR>

set pastetoggle=<f9>

"Toggle spell check
noremap <leader>sp :set spell!<cr>

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

" command typo mapping
cnoremap WQ wq
cnoremap Wq wq
cnoremap QA qa
cnoremap qA qa
cnoremap Q! q!

" Toggle White-space Changes in diff
nnoremap <leader>iw :call s:toggleWhiteSpaceInDiffMode()<CR>

" Smooth scrolling that works both in terminal and in GUI Vim
nnoremap <silent> <c-u> :call <sid>smoothScroll(1)<cr>
nnoremap <silent> <c-d> :call <sid>smoothScroll(0)<cr>
" Scroll the viewport faster
nnoremap <c-e> <c-e><c-e>
nnoremap <c-y> <c-y><c-y>

" Remove ttailing space
nnoremap <silent> <leader>ts :<c-u>call <sid>removeTrailingSpace()<cr>

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
nnoremap gY "*Y
nnoremap gp "*p
vnoremap gp "*p
nnoremap gP "*P
vnoremap gP "*P

" }}}
" Color Scheme {{{
set t_Co=256
set background=dark
let g:hybrid_reduced_contrast = 1
colorscheme hybrid
" }}}
" Color scheme for diff mode {{{

  highlight DiffAdd    cterm=bold ctermfg=0    ctermbg=2    gui=bold    guifg=#232834 guibg=#A6CC70
  highlight DiffDelete cterm=bold ctermfg=0    ctermbg=203  gui=bold    guifg=#232834 guibg=#F27983
  highlight DiffChange cterm=bold ctermfg=0    ctermbg=11   gui=bold    guifg=#232834 guibg=#FFCC66
  highlight DiffText   cterm=bold ctermfg=0    ctermbg=32   gui=bold    guifg=#232834 guibg=#77A8D9


" Cterm - sets the style
" Ctermfg - set the text color
" Ctermbg - set the highlighting
" DiffAdd - line was added
" DiffDelete - line was removed
" DiffChange - part of the line was changed (highlights the whole line)
" DiffText - the exact part of the line that changed

" }}}
" Home made Functions {{{
function! s:toggleWhiteSpaceInDiffMode()
  if &diffopt =~ 'iwhite'
    set diffopt-=iwhite
  else
    set diffopt+=iwhite
  endif
endfunction

fun! s:smoothScroll(up)
  execute "normal " . (a:up ? "\<c-y>" : "\<c-e>")
  redraw
  for l:count in range(3, &scroll, 2)
    sleep 7m
    execute "normal " . (a:up ? "\<c-y>" : "\<c-e>")
    redraw
  endfor
  " bring the cursor in the middle
  execute "normal M"
endf

fun! s:enableStatusLine()
  if exists("g:default_stl") | return | endif
  augroup lf_warnings
    autocmd!
    autocmd BufReadPost,BufWritePost * call <sid>update_warnings()
  augroup END
  augroup GetGitBranch
    autocmd!
    autocmd VimEnter,WinEnter,BufEnter,VimResized * call StatuslineGitBranch()
  augroup END
  set noshowmode " Do not show the current mode because it is displayed in the status line
  set noruler
  let g:default_stl = 1
  let g:default_tal = 1
  call s:setStatusLine()
  set tabline=%!BuildTabLine()
endf

fun! s:disableStatusLine()
  if !exists("g:default_stl") | return | endif
  unlet g:default_tal
  unlet g:default_stl
  set ruler
  set showmode
  set statusline=
  autocmd! lf_warnings
  augroup! lf_warnings
  autocmd! GetGitBranch
  augroup! GetGitBranch
endf

" Update trailing space and mixed indent warnings for the current buffer.
fun! s:update_warnings()
  if exists('b:lf_no_warnings')
    unlet! b:lf_stl_warnings
    return
  endif
  if exists('b:lf_large_file')
    let b:lf_stl_warnings = ' Large file '
    return
  endif
  let l:trail  = search('\s$',       'cnw')
  let l:spaces = search('^\s\{-} ',  'cnw')
  let l:tabs   = search('^\s\{-}\t', 'cnw')
  if l:trail || (l:spaces && l:tabs)
    let b:lf_stl_warnings = ' '
          \ . (l:trail            ? 'Trailing space ('.l:trail.') '           : '')
          \ . (l:spaces && l:tabs ? 'Mixed indent ('.l:spaces.'/'.l:tabs.') ' : '')
  else
    unlet! b:lf_stl_warnings
  endif
endf

" Delete trailing white space.
fun! s:removeTrailingSpace()
  let l:winview = winsaveview() " Save window state
  keeppatterns %s/\s\+$//e
  call winrestview(l:winview) " Restore window state
  call s:update_warnings()
  redraw  " See :h :echo-redraw
  echomsg 'Trailing space removed!'
endf

function! StatuslineGitBranch()
  let b:gitbranch=""
  if &modifiable && get(w:,'lf_winwd', 100)>99
    let l:gitrevparse=system("git rev-parse --abbrev-ref HEAD")
    if l:gitrevparse!~"fatal: not a git repository"
      let b:gitbranch=substitute(l:gitrevparse, '\n', '', 'g')
    endif
  endif
endfunction


" }}}
" Custom commands {{{
" Custom status line
command! -nargs=0 EnableStatusLine call <sid>enableStatusLine()
command! -nargs=0 DisableStatusLine call <sid>disableStatusLine()

" }}}
" Status line {{{
  " See :h mode()
    let s:mode_map = {
      \ 'c'  : 'COMMAND',
      \ 'i'  : 'INSERT',
      \ 'ic' : 'INSERT COMPL',
      \ 'ix' : 'INSERT COMPL',
      \ 'n'  : 'NORMAL',
      \ 'ni' : '(INSERT)',
      \ 'no' : 'OP PENDING',
      \ 'R'  : 'REPLACE',
      \ 'Rv' : 'V REPLACE',
      \ 's'  : 'SELECT',
      \ 'S'  : 'S-LINE',
      \ '' : 'S-BLOCK',
      \ 't'  : 'TERMINAL',
      \ 'v'  : 'VISUAL',
      \ 'V'  : 'V-LINE',
      \ '' : 'V-BLOCK',
      \}

    function! StatuslineMode()
      let l:mode=mode()
      return s:mode_map[l:mode]
    endfunction


  " newMode may be a value as returned by mode() or the name of a highlight group
  " Note: setting highlight groups while computing the status line may cause the
  " startup screen to disappear. See: https://github.com/powerline/powerline/issues/250
  fun! s:updateStatusLineHighlight(newMode)
    execute 'hi! link CurrMode' get(g:mode_map, a:newMode, ["", a:newMode])[1]
    return 1
  endf

  " nr is always the number of the currently active window. In a %{} context, winnr()
  " always refers to the window to which the status line being drawn belongs. Since this
  " function is invoked in a %{} context, winnr() may be different from a:nr. We use this
  " fact to detect whether we are drawing in the active window or in an inactive window.
  fun! SetFlags()
    call extend(w:, {
      \ 'lf_active': 1,
      \ 'lf_winwd': winwidth(winnr()),
      \ })
    return ''
  endf

  " Build the status line the way I want - no fat light plugins!
  fun! BuildStatusLine(nr)
    return '%{SetupStl('.a:nr.')}
          \%#CurrMode#%{w:["lf_active"] ? "  " . get(g:mode_map, mode(), [mode()])[0] . (&paste ? " PASTE " : " ") : ""}%*
          \ %{(w:["lf_active"] ? "" : "   ") . winnr()} %{&modified ? "◦" : " "} %t (%n) %{&modifiable ? (&readonly ? "▪" : " ") : "✗"}
          \ %<%{empty(&buftype) ? (w:["lf_winwd"] < 80 ? (w:["lf_winwd"] < 50 ? "" : expand("%:p:h:t")) : expand("%:p:~:h")) : ""}
          \ %=
          \ %a %w %{&ft} %{w:["lf_winwd"] < 80 ? "" : " " . (strlen(&fenc) ? &fenc : &enc) . (&bomb ? ",BOM " : " ")
          \ . &ff . (&expandtab ? "" : " ⇥ ")} %l:%v %P
          \ %#Warnings#%{w:["lf_active"] ? get(b:, "lf_stl_warnings", "") : ""}%*'
  endf

  fun! s:setStatusLine()
    set laststatus=2
    set statusline=%{SetFlags()}
    set statusline+=%{StatuslineMode()}
    set statusline+=\ 
    set statusline+=%{b:gitbranch}
    set statusline+=\ 
    set statusline+=B:%n\ W:%{winnr()}
    set statusline+=\ 
    set statusline+=%<%f
    set statusline+=%m
    set statusline+=%{&modifiable?(&readonly?'▪':''):'✗'}
    set statusline+=%h
    set statusline+=%=
    set statusline+=\ 
    set statusline+=%y
    set statusline+=%{&ff}
    set statusline+=\ 
    set statusline+=%{strlen(&fenc)?&fenc:&enc}
    set statusline+=\ 
    set statusline+=%l
    set statusline+=/
    set statusline+=%L
    set statusline+=:
    set statusline+=%c
    set statusline+=\ 
    set statusline+=%P
    set statusline+=%#WarningMsg#
    set statusline+=%{get(w:,'lf_active')&&(get(w:,'lf_winwd')>99)?get(b:,'lf_stl_warnings',''):''}
  endf

" }}}
" Tabline {{{
  fun! BuildTabLabel(nr, active)
    return (a:active ? '●' : a:nr).' '.fnamemodify(bufname(tabpagebuflist(a:nr)[tabpagewinnr(a:nr) - 1]), ":t:s/^$/[No Name]/").' '
  endf

  fun! BuildTabLine()
    return (join(map(
          \   range(1, tabpagenr('$')),
          \   '(v:val == tabpagenr() ? "%#TabLineSel#" : "%#TabLine#") . "%".v:val."T %{BuildTabLabel(".v:val.",".(v:val == tabpagenr()).")}"'
          \ ), ''))
          \ . "%#TabLineFill#%T%=⌘ %<%{&columns < 100 ? fnamemodify(getcwd(), ':t') : getcwd()} "
  endf

" }}}
" Init {{{
  let g:LargeFile = 20*1024*1024 " 20MB
  EnableStatusLine
" }}}
