def hanoi(n, froms, to, via):
    if n > 1:
        hanoi(n - 1, froms, via, to)
        print(froms + " -> " + to)
        hanoi(n - 1, via, to, froms)
    else:
        print(froms + " -> " + to)

n = int(input())
hanoi(n, "a", "b", "c")
