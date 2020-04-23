string fizzbuzz(int i) {
  if(i % 15 == 0) return "FizzBuzz";
  else if(i % 3 == 0) return "Fizz";
  else if(i % 5 == 0) return "Buzz";
  else return (string)i;
}

void run(int n) {
  for(int i = 1; i <= n; i++) {
    write("%s\n", fizzbuzz(i));
  }
}

void main() {
  run(15);
}
