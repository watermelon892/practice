let FizzBuzz (i : int) =
    if   i % 15 = 0 then "FizzBuzz"
    elif i %  3 = 0 then "Fizz"
    elif i %  5 = 0 then "Buzz"
    else i.ToString()

let run (n : int) =
    for i = 1 to n do
        printfn "%s" (FizzBuzz i)

run 15
