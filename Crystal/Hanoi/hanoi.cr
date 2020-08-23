def hanoi(n, from, to, via)
  if n > 1
    hanoi(n - 1, from, via, to)
    puts from + " -> " + to
    hanoi(n - 1, via, to, from)
  else
    puts from + " -> " + to
  end
end

n = read_line.chomp.to_i
hanoi(n, "a", "b", "c")
