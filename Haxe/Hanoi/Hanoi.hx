class Hanoi {
  static public function main(): Void {
    hanoi(3, "a", "b", "c");
  }

  static function hanoi(n: Int, from: String, to: String, via: String) {
    if (n > 1) {
      hanoi(n - 1, from, via, to);
      trace(from + " -> " + to);
      hanoi(n - 1, via, to, from);
    } else {
      trace(from + " -> " + to);
    }
  }
}
