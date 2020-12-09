using System;

public class Hanoi {
    public static void Main() {
        int a = int.Parse(Console.ReadLine());
        int b = int.Parse(Console.ReadLine());
        int ret = a + b;
        Console.WriteLine(a + " + " + b + " = " + ret);
    }
}
