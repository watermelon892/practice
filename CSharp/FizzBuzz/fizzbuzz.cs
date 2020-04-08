using System;

public class FizzBuzz {
    public static void Main() {
        run(15);
    }

    private static void run(int n) {
        for(int i = 1; i <= n; i++) {
            if (i % 15 == 0) {
                Console.WriteLine("FizzBuzz");
            } else if (i % 3 == 0) {
                Console.WriteLine("Fizz");
            } else if (i % 5 == 0) {
                Console.WriteLine("Buzz");
            } else {
                Console.WriteLine(i);
            }
        }
    }
}
