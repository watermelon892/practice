void hanoi(int n, string from, string to, string via) {
  if (n > 1) {
    hanoi(n - 1, from, via, to);
    write(from + " -> " + to + "\n");
    hanoi(n - 1, via, to, from);
  } else {
    write(from + " -> " + to + "\n");
  }
}

int main() {
  int n = (int)Stdio.stdin->gets();
  hanoi(n, "a", "b", "c");
  return 0;
}
