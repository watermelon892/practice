fizzbuzz = (i) ->
    if i % 15 == 0
         "FizzBuzz";
    else if i % 3 == 0
         "Fizz";
    else if i % 5 == 0
         "Buzz";
    else
         i;

run = (n) ->
    for i in [1..n]
        console.log(fizzbuzz(i));

run(15);
