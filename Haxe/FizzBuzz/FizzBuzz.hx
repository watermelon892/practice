class FizzBuzz {
  static public function main(): Void {
    run(15);
  }

  static function run(n: Int): Void {
    for (i in 1...n + 1) {
      trace(fizzbuzz(i));
    }
  }

  static function fizzbuzz(i: Int): String {
    if (i % 15 == 0) return "FizzBuzz";
    else if (i % 3 == 0) return "Fizz";
    else if (i % 5 == 0) return "Buzz";
    else return "" + i;
  }
}
