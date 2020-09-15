use std::io;

fn read<T: std::str::FromStr>() -> T {
  let mut s = String::new();
  io::stdin().read_line(&mut s).ok();
  s.trim().parse().ok().unwrap()
}

fn main() {
  let name: String = read();
  println!("Hello, {}", name);
}
