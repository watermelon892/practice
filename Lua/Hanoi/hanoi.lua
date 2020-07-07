function hanoi(n, from, to, via)
  if n > 1 then
    hanoi(n - 1, from, via, to)
    print(from .. " -> " .. to)
    hanoi(n - 1, via, to, from)
  else
    print(from .. " -> " .. to)
  end
end

n = tonumber(io.read())
hanoi(n, "a", "b", "c")
