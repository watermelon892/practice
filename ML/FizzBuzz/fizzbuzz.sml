fun fizzbuzz (i) =
    case (i mod 3 = 0, i mod 5 = 0) of
        (true,   true) => "FizzBuzz"
      | (true,  false) => "Fizz"
      | (false,  true) => "Buzz"
      | (false, false) => Int.toString (i);

fun run (i, n) =
    if i > n then ()
    else (
        print (fizzbuzz (i) ^ "\n");
        run (i + 1, n)
    );

run (1, 15);
