fun hanoi (n, from, to, via) =
    if n > 1 then (
        hanoi ((n - 1), from, via, to);
        print (from ^ " -> " ^ to ^ "\n");
        hanoi ((n - 1), via, to, from)
    ) else (
        print (from ^ " -> " ^ to ^ "\n")
    );

hanoi (3, "a", "b", "c");
