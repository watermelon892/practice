class FizzBuzz {
  static Void main() {
    for(i := 1; i <= 15; i++) {
      if(i % 15 == 0) {
        echo("FizzBuzz")
      } else if (i % 3 == 0) {
        echo("Fizz")
      } else if (i % 5 == 0) {
        echo("Buzz")
      } else {
        echo(i)
      }
    }
  }
}
