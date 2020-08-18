hanoi = (n, _from, to, via) ->
  if n > 1
    hanoi n - 1, _from, via, to
    print _from, "->", to
    hanoi n - 1, via, to, _from
  else
    print _from, "->", to

hanoi 3, "a", "b", "c"
