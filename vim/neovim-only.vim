" use Esc to exit insert mode in terminal
tnoremap <Esc> <C-\><C-n>

" Navigate neovim + neovim terminal emulator with alt+direction
tnoremap <c-h> <C-\><C-n><C-w>h
tnoremap <c-j> <C-\><C-n><C-w>j
tnoremap <c-k> <C-\><C-n><C-w>k
tnoremap <c-l> <C-\><C-n><C-w>l

" set true color
set termguicolors

" treat emojis 😄  as full width characters
set emoji

" set cursor modes
set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
      \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
      \,sm:block-blinkwait175-blinkoff150-blinkon175

if has('nvim-0.3.3')
  set diffopt+=algorithm:patience
endif
