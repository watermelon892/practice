class Hanoi : Object {
	static void main(string[] args) {
		int a = int.parse(stdin.read_line());
        int b = int.parse(stdin.read_line());
        print("%d + %d = %d\n", a, b, a + b);
	}
}
