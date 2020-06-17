using System;

public class Hanoi {
    public static void Main() {
        int n = int.Parse(Console.ReadLine());
        hanoi(n, 'a', 'b', 'c');
    }

    private static void hanoi(int n, char from, char to, char via) {
        if (n > 1) {
            hanoi(n - 1, from, via, to);
            Console.WriteLine(from + " -> " + to);
            hanoi(n - 1, via, to, from);
        } else {
            Console.WriteLine(from + " -> " + to);
        }
    }
}
