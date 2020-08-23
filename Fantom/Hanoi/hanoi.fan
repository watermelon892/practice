class FizzBuzz {
  static Void hanoi(Int n, Str from, Str to, Str via) {
    if(n > 1) {
      hanoi(n - 1, from, via, to)
      echo(from + " -> " + to)
      hanoi(n - 1, via, to, from)
    } else {
      echo(from + " -> " + to)
    }
  }

  static Void main() {
    hanoi(3, "a", "b", "c")
  }
}
