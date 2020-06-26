import 'dart:io';

hanoi(n, from, to, via) {
  if (n > 1) {
    hanoi(n - 1, from, via, to);
    print(from + " -> " + to);
    hanoi(n - 1, via, to, from);
  } else {
    print(from + " -> " + to);
  }
}

main() {
  var n = int.parse(stdin.readLineSync());
  hanoi(n, "a", "b", "c");
}
