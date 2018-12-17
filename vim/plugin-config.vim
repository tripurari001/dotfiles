"################## Plugin Config ###################

" vim - jsx support in .js extension
let g:jsx_ext_required = 0

" use powerline font in status line
let g:airline_powerline_fonts = 1

" Show hidden files in NerdTree
let NERDTreeShowHidden=1

" Emmet configuration
let g:user_emmet_mode='i'
let g:user_emmet_leader_key='<C-E>'

" Mu-completer settings
set completeopt+=menuone,noinsert,noselect   " show menu for even 1 option and do not auto insert suggestions 


"############# ALE Config #############
let g:ale_sign_column_always = 1
let g:ale_sign_error = 'xx'
let g:ale_sign_warning = '!!'
"############# ALE Config end #############
