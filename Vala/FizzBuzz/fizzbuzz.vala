class FizzBuzz : Object {
	string run(int i) {
		if(i % 15 == 0) return "FizzBuzz";
		else if(i % 3 == 0) return "Fizz";
		else if(i % 5 == 0) return "Buzz";
		else return i.to_string();
	}

	static void main(string[] args) {
		var fizzbuzz = new FizzBuzz();
		for(int i = 1; i <= 15; i++) {
			print("%s\n", fizzbuzz.run(i));
		}
	}
}
