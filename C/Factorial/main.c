#include <stdio.h>

int factorial(int n);

int main(void) {
  int n;

  printf(">> ");
  scanf("%d", &n);

  printf("%d\n", factorial(n));

  return 0;
}

int factorial(int n) {
  int ret = 1;
  for (int i = 1; i <= n; ++i) {
    ret *= i;
  }
  return ret;
}
