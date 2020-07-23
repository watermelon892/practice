class Hanoi : Object {
	void run(int n, string from, string to, string via) {
		if (n > 1) {
			run(n - 1, from, via, to);
			print("%s -> %s\n", from, to);
			run(n - 1, via, to, from);
		} else {
			print("%s -> %s\n", from, to);
		}
	}

	static void main(string[] args) {
		var hanoi = new Hanoi();
		int n = int.parse(stdin.read_line());
		hanoi.run(n, "a", "b", "c");
	}
}
