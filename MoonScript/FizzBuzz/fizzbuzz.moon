fizzbuzz = (i) ->
  if i % 15 == 0
    return "FizzBuzz"
  elseif i % 3 == 0
    return "Fizz"
  elseif i % 5 == 0
    return "Buzz"
  else
    return i

run = (n) ->
  for i = 1, n
    print fizzbuzz i

run 15
