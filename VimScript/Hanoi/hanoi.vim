function! s:hanoi(n, from, to, via)
  if a:n > 1
    call s:hanoi(a:n - 1, a:from, a:via, a:to)
    echo a:from'->'a:to
    call s:hanoi(a:n - 1, a:via, a:to, a:from)
  else
    echo a:from'->'a:to
  endif
endfunction

call s:hanoi(3, 'a', 'b', 'c')
