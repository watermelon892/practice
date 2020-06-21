package main

import "fmt"

func hanoi(n int, from, to, via string) {
  if n > 1 {
    hanoi(n - 1, from, via, to)
    fmt.Println(from, " -> ", to)
    hanoi(n - 1, via, to, from)
  } else {
    fmt.Println(from, " -> ", to)
  }
}

func main() {
  var n int
  fmt.Scan(&n)
  hanoi(n, "a", "b", "c")
}
