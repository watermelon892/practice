USING: formatting kernel locals math io math.parser ;
IN: hanoi

: move ( from to -- )
  "%s -> %s\n" printf ;

:: hanoi ( n from to via -- )
  n 1 > [
    n 1 - from via to hanoi
    from to move
    n 1 - via to from hanoi
  ]
  [
    from to move
  ]
  if ;

readln string>number "a" "b" "c" hanoi
