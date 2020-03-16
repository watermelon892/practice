defmodule FizzBuzz do
  def say(n) do
    Enum.map_join 1..n, fn x ->
      cond do
        rem(x, 15) === 0 -> "FizzBuzz\n"
        rem(x, 3) === 0 -> "Fizz\n"
        rem(x, 5) === 0 -> "Buzz\n"
        true -> Integer.to_string(x) <> "\n"
      end
    end
  end
end

IO.puts FizzBuzz.say(15)
