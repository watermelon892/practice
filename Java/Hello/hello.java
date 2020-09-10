import java.util.*;

class Hello {
    public static void main(String[] args) {
        Scanner cin = new Scanner(System.in);
        if (cin.hasNext()) {
            String name = cin.nextLine();
            System.out.println("Hello, " + name);
        }
    }
}
