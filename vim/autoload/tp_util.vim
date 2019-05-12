function! tp_util#toggleWhiteSpaceInDiffMode() abort
  if &diffopt =~ 'iwhite'
    set diffopt-=iwhite
  else
    set diffopt+=iwhite
  endif
endfunction

fun! tp_util#smoothScroll(up) abort
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

" Delete trailing white space.
fun! tp_util#removeTrailingSpace() abort
  let l:winview = winsaveview() " Save window state
  keeppatterns %s/\s\+$//e
  call winrestview(l:winview) " Restore window state
  call s:update_warnings()
  redraw  " See :h :echo-redraw
  echomsg 'Trailing space removed!'
endf
