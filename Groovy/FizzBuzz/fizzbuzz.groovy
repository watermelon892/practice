def fizzbuzz(n) {
  for (int i = 0; i <= n; i++) {
    if (i % 15 == 0) {
      println "FizzBuzz"
    } else if (i % 3 == 0) {
      println "Fizz"
    } else if (i % 5 == 0) {
      println "Buzz"
    } else {
      println i
    }
  }
}

fizzbuzz(15)
