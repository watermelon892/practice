hanoi = (n, from, to, via) ->
  if (n > 1)
    hanoi n - 1, from, via, to
    console.log(from + " -> " + to)
    hanoi n - 1, via, to, from
  else
    console.log(from + " -> " + to)

hanoi 3, "a", "b", "c"
