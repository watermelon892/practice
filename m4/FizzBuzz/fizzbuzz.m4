define(`buzz',
  `ifelse(eval($1 % 5), `0', `Buzz')')dnl
define(`fizz',
  `ifelse(eval($1 % 3), `0', `Fizz', `buzz($1)')')dnl
define(`fizzbuzz',
  `ifelse(eval($1 % 15), `0', `FizzBuzz', `fizz($1)')')dnl
define(`run',
  `ifelse(fizzbuzz($1), `', $1, fizzbuzz($1))')dnl
define(`range',
  `ifelse(eval($1 >= $2), `1', `$1', `range($1, decr($2))'`, $2')')dnl
define(`main',
  `ifelse($#, 1, `run($1)', `run($1) main(shift($@))')')dnl
main(range(1, 15))
