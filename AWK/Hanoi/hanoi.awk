function hanoi(n, from, to, via) {
    if (n > 1) {
        hanoi(n - 1, from, via, to)
        print from " -> " to
        hanoi(n - 1, via, to, from)
    } else {
        print from " -> " to
    }
}

{
    hanoi($1, "a", "b", "c")
}
