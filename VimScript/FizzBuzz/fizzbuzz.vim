for i in range(1, 15)
  if i % 15 == 0
    echo 'FizzBuzz'
  elseif i % 3 == 0
    echo 'Fizz'
  elseif i % 5 == 0
    echo 'Buzz'
  else
    echo i
  endif
endfor
