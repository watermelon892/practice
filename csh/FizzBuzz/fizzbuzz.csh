#!/bin/csh
set i = 1
while ( $i <= 15 )
  if ( $i % 15 == 0 ) then
    echo FizzBuzz
  else if ( $i % 3 == 0 ) then
    echo Fizz
  else if ( $i % 5 == 0 ) then
    echo Buzz
  else
    echo $i
  endif
  @ i++
end
