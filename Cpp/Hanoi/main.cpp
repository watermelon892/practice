#include <iostream>
using namespace std;

void hanoi(int n, string from, string to, string via) {
  if (n > 1) {
    hanoi(n - 1, from, via, to);
    cout << from << " -> " << to << endl;
    hanoi(n - 1, via, to, from);
  } else {
    cout << from << " -> " << to << endl;
  }
}

int main(void) {
  int n;
  cin >> n;

  hanoi(n, "a", "b", "c");

  return 0;
}
