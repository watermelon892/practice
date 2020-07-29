hanoi <- function(n, from, to, via) {
  if (n > 1) {
    hanoi(n - 1, from, via, to)
    cat(paste(from, "->", to, "\n"))
    hanoi(n - 1, via, to, from)
  } else {
    cat(paste(from, "->", to, "\n"))
  }
}

n <- readLines("stdin")
hanoi(as.integer(n), "a", "b", "c")
