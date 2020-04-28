(defun fizzbuzz (i)
  (cond ((== (rem i 15) 0) "FizzBuzz")
        ((== (rem i  3) 0) "Fizz")
        ((== (rem i  5) 0) "Buzz")
        ('true (integer_to_list i))))

(lists:map
 (lambda (x)
   (io:format "~s~n" `(,(fizzbuzz x))))
 (lists:seq 1 15))
