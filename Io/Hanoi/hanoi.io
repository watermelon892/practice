hanoi := method(n, from, to, via,
  if (n > 1,
      hanoi(n - 1, from, via, to)
      write(from, " -> ", to, "\n")
      hanoi(n - 1, via, to, from),
      write(from, " -> ", to, "\n")))

hanoi(3, "a", "b", "c")
