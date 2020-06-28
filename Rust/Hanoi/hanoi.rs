use std::io;

fn read<T: std::str::FromStr>() -> T {
  let mut s = String::new();
  io::stdin().read_line(&mut s).ok();
  s.trim().parse().ok().unwrap()
}

fn hanoi(n: i32, from: char, to: char, via: char) {
  if n > 1 {
    hanoi(n - 1, from, via, to);
    println!("{} -> {}", from, to);
    hanoi(n - 1, via, to, from);
  } else {
    println!("{} -> {}", from, to);
  }
}

fn main() {
  let n = read();
  hanoi(n, 'a', 'b', 'c');
}
