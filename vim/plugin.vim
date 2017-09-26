" ############# vim-plug #########
" ############# vim-plug #########

" Specify a directory for plugins
call plug#begin('~/.trippcconfig/vim/plugged')

" ColorScheme
Plug 'rafi/awesome-vim-colorschemes'

"make status line cool
Plug 'vim-airline/vim-airline'

" ColorScheme 2
"Plug 'chriskempson/base16-vim'

"surround vim 
Plug 'tpope/vim-surround'

"javascript support 
Plug 'pangloss/vim-javascript'

"JSX support
Plug 'mxw/vim-jsx'

"Comment support 
Plug 'tpope/vim-commentary'

"auto pairs
Plug 'jiangmiao/auto-pairs'

"jinja template hilight
Plug 'Glench/Vim-Jinja2-Syntax', {'for': ['jinja', 'twig']}

"rust support for nvim
Plug 'rust-lang/rust.vim', {'for': ['rs']}

"emmet for vim 
Plug 'mattn/emmet-vim', {'for': ['jinja', 'html', 'javascript', 'htm', 'shtml', 'stm', 'twig']}

"file finder ctrlP
Plug 'ctrlpvim/ctrlp.vim'

"fugutive vim 
Plug 'tpope/vim-fugitive'

" Initialize plugin system
call plug#end()
