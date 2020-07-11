: move ( to via from level -- to via from )
  dup >r 0> if
    rot swap r@ 1- recurse ( via to from )
    2dup . ." -> " . cr
    rot r@ 1- recurse      ( to from via )
    swap                   ( to via from )
  then
    r> drop ;

: hanoi ( to via from level -- )
  move drop drop drop ;

: countdown dup 1 - dup 1 > if recurse then ;

3 countdown depth hanoi

bye
