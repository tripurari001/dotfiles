" ############# vim-plug #########
" ############# vim-plug #########

" Specify a directory for plugins
call plug#begin('~/.trippcconfig/vim/plugged')

" ColorScheme
Plug 'w0ng/vim-hybrid'

" The one and only NerdTree
Plug 'scrooloose/nerdtree'

"make status line cool
Plug 'vim-airline/vim-airline'

"surround vim
Plug 'tpope/vim-surround'

"javascript support
Plug 'pangloss/vim-javascript'

"JSX support
Plug 'mxw/vim-jsx'

" " Comment out code easily
Plug 'tpope/vim-commentary'

"auto pairs
Plug 'jiangmiao/auto-pairs'

"jinja template hilight
Plug 'Glench/Vim-Jinja2-Syntax', {'for': ['jinja', 'twig']}

"rust support for nvim
Plug 'rust-lang/rust.vim', {'for': ['rs']}

"emmet for vim
Plug 'mattn/emmet-vim', {'for': ['jinja', 'html', 'javascript', 'htm', 'shtml', 'stm', 'twig', 'eruby']}

"file finder ctrlP
Plug 'ctrlpvim/ctrlp.vim'

"fugutive vim
Plug 'tpope/vim-fugitive'

"ALE Async Linting Engine
Plug 'w0rp/ale'

" Mu-Complete for autocomplete
Plug 'lifepillar/vim-mucomplete'

" For Tagfile Management
Plug 'ludovicchabant/vim-gutentags'

" Prettier ( formatter )
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'branch': 'release/1.x',
  \ 'for': [
    \ 'javascript',
    \ 'typescript',
    \ 'css',
    \ 'less',
    \ 'scss',
    \ 'json',
    \ 'graphql',
    \ 'markdown',
    \ 'vue',
    \ 'lua',
    \ 'php',
    \ 'python',
    \ 'ruby',
    \ 'html',
    \ 'swift' ] }

" Initialize plugin system
call plug#end()
