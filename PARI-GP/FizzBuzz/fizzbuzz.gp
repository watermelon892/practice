fizzbuzz(i) = {
  if(i % 15 == 0,
    "FizzBuzz",
    if(i % 3 == 0,
      "Fizz",
      if(i % 5 == 0,
        "Buzz",
        i)))
}

run(n) = {
  for(i = 1, n, print(fizzbuzz(i)))
}

run(15)

\q
