let fizzbuzz i =
  match i mod 3, i mod 5 with
    0, 0 -> "FizzBuzz"
  | 0, _ -> "Fizz"
  | _, 0 -> "Buzz"
  | _    -> string_of_int i;;

let run n =
  for i = 1 to n do print_endline (fizzbuzz i) done;;

run 15;;
