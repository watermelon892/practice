

print(
    (($_ % 3 ? "" : Fizz) . ($_ % 5 ? "" : Buzz) or $ _) . "\n"
)
for 1..15
