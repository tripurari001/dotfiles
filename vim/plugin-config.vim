"################## Plugin Config ###################

" vim - jsx support in .js extension
let g:jsx_ext_required = 0

" Show hidden files in NerdTree
let NERDTreeShowHidden=1

" Emmet configuration
let g:user_emmet_mode='i'
let g:user_emmet_leader_key='<C-E>'

" Do not auto select first option when using tab
" use completeopt setting for tab as well
" let g:mucomplete#always_use_completeopt = 1

" Order of complition method
	let g:mucomplete#chains = {
		\ 'default' : ['file', 'c-n']
		\ }

" Auto suggestion
" let g:mucomplete#enable_auto_at_startup = 1

" Disable prettier on autosave
let g:prettier#autoformat = 0


"############# ALE Config #############
let g:ale_sign_column_always = 1
let g:ale_sign_error = 'xx'
let g:ale_sign_warning = '!!'

let g:ale_fixers = {
\   '*'              : ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript'     : ['prettier'],
\   'javascript.jsx' : ['prettier'],
\   'json'           : ['prettier'],
\   'scss'           : ['prettier'],
\}

let g:ale_linters = {
\   'javascript': ['eslint'],
\}
"############# ALE Config end #############
