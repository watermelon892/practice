import std.stdio;

void hanoi(int n, char from, char to, char via) {
  if (n > 1) {
    hanoi(n - 1, from, via, to);
    printf("%c -> %c\n", from, to);
    hanoi(n - 1, via, to, from);
  } else {
    printf("%c -> %c\n", from, to);
  }
}

void main() {
  int n;
  scanf("%d", &n);
  hanoi(n, 'a', 'b', 'c');
}
