function hanoi(n, from, to, via) {
    if (n > 1) {
        hanoi(n - 1, from, via, to);
        console.log(from + " -> " + to);
        hanoi(n - 1, via, to, from);
    } else {
        console.log(from + " -> " + to);
    }
}

process.stdin.on('data', function (line) {
    hanoi(line, "a", "b", "c");
    process.exit(0);
});
