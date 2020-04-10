loop (my $i = 1; $i <= 15; $i++) {
  if $i % 15 == 0 {
    say "FizzBuzz"
  } elsif $i % 3 == 0 {
    say "Fizz"
  } elsif $i % 5 == 0 {
    say "Buzz"
  } else {
    say "$i"
  }
}
