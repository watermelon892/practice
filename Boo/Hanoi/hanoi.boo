def hanoi(n as int, _from as string, to as string, via as string):
  if n > 1:
    hanoi(n - 1, _from, via, to)
    print("${_from} -> ${to}")
    hanoi(n - 1, via, to, _from)
  else:
    print("${_from} -> ${to}")

hanoi(3, "a", "b", "c")
