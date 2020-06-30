open System

let rec Hanoi n from to_ via =
  if n > 1 then
    Hanoi (n - 1) from via to_
    printf "%c -> %c\n" from to_
    Hanoi (n - 1) via to_ from
  else
    printf "%c -> %c\n" from to_

let n = Console.ReadLine() in
Hanoi (int n) 'a' 'b' 'c'
