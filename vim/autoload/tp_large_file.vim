" Ignore syntax highlighting, filetype, etc…
" See also: http://vim.wikia.com/wiki/Faster_loading_of_large_files
fun! tp_buffer#large(name)
  let b:tp_large_file = 1
  syntax clear
  set eventignore+=FileType
  "let &backupskip .= ',' . a:name
  setlocal foldmethod=manual nofoldenable noswapfile noundofile
  augroup tp_large_buffer
    autocmd!
    autocmd BufWinEnter <buffer> call <sid>restore_eventignore()
  augroup END
endf

fun! s:restore_eventignore()
  set eventignore-=FileType
  autocmd! tp_large_buffer
  augroup! tp_large_buffer
endf
