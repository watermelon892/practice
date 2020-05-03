USE: io
USE: kernel
USE: math
USE: math.functions
USE: math.parser
USE: math.ranges
USE: formatting
USE: sequences
IN: fizzbuzz

: fizz ( i -- str )
  3 mod zero? [ "Fizz" ] [ "" ] if ;

: buzz ( i -- str )
  5 mod zero? [ "Buzz" ] [ "" ] if ;

: run ( i -- str )
  dup [ fizz ] [ buzz ] bi append [ number>string ] [ nip ] if-empty ;

: main ( n -- )
  [1,b] [ run print ] each ;

15 main
