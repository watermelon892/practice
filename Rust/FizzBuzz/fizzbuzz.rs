fn fizzbuzz(n: i32) {
    let mut i = 1;
    while i <= n {
        if i % 15 == 0 {
            println!("FizzBuzz");
        } else if i % 3 == 0 {
            println!("Fizz");
        } else if i % 5 == 0 {
            println!("Buzz");
        } else {
            println!("{}", i)
        }
        i += 1;
    }
}

fn main() {
    fizzbuzz(15);
}
