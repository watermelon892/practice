run <- function(n) {
  for(i in 1:n) {
    if (i %% 15 == 0) {
      print("FizzBuzz")
    } else if (i %% 3 == 0) {
      print("Fizz")
    } else if (i %% 5 == 0) {
      print("Buzz")
    } else {
      print(i)
    }
  }
}

run(15)
