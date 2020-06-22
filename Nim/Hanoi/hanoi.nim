from strutils import parseInt

proc hanoi(n: int, froms: string, to: string, via: string) =
  if n > 1:
    hanoi(n - 1, froms, via, to)
    echo froms, " -> ", to
    hanoi(n - 1, via, to, froms)
  else:
    echo froms, " -> ", to

var n = parseInt(readLine(stdin))
hanoi(n, "a", "b", "c")
