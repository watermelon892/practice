import java.util.*;

class Hanoi {
    private static void hanoi(int n, char from, char to, char via) {
        if (n > 1) {
            hanoi(n - 1, from, via, to);
            System.out.println(from + " -> " + to);
            hanoi(n - 1, via, to, from);
        } else {
            System.out.println(from + " -> " + to);
        }
    }

    public static void main(String[] args) {
        Scanner cin = new Scanner(System.in);
        if (cin.hasNext()) {
            int n = Integer.parseInt(cin.nextLine());
            hanoi(n, 'a', 'b', 'c');
        }
    }
}
