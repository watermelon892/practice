defmodule Hanoi do
  def hanoi(1, from, to, _), do: IO.puts "#{from} -> #{to}"
  def hanoi(n, from, to, via) do
    hanoi(n - 1, from, via, to)
    IO.puts "#{from} -> #{to}"
    hanoi(n - 1, via, to, from)
  end
end

n = elem(Integer.parse(IO.gets ""), 0)
Hanoi.hanoi(n, "a", "b", "c")
