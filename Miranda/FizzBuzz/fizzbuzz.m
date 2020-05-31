run n = concat (map fizzbuzz [1..n])
fizzbuzz i = "FizzBuzz\n", if i mod 15 == 0
           = "Fizz\n", if i mod 3 == 0
           = "Buzz\n", if i mod 5 == 0
           = show i ++ "\n", otherwise
