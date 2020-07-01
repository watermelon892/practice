function hanoi(n::Int, from::String, to::String, via::String)
  if n > 1
    hanoi(n - 1, from, via, to)
    println("$from -> $to")
    hanoi(n - 1, via, to, from)
  else
    println("$from -> $to")
  end
end

n = parse(Int64, readline())
hanoi(n, "a", "b", "c")
