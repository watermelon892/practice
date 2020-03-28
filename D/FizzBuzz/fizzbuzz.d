import std.stdio;

void fizzbuzz(int n) {
  for (int i = 1; i <= n; i++) {
    if (i % 15 == 0) {
      writeln("FizzBuzz");
    } else if (i % 3 == 0) {
      writeln("Fizz");
    } else if (i % 5 == 0) {
      writeln("Buzz");
    } else {
      writeln(i);
    }
  }
}

void main() {
  fizzbuzz(15);
}
