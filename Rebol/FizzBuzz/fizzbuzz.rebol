rebol [
  Title: "FizzBuzz"
]

repeat i 15 [
  print switch/default 0 compose [
    (mod i 15) ["FizzBuzz"]
    (mod i  3) ["Fizz"]
    (mod i  5) ["Buzz"]
  ][i]
]
