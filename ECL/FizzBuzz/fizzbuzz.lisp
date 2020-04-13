(defun fizzbuzz (i)
  (cond ((zerop (mod i 15)) "FizzBuzz")
        ((zerop (mod i  3)) "Fizz")
        ((zerop (mod i  5)) "Buzz")
        (t i)))

(defun run (n)
  (loop for i from 1 to n
        do (format t "~A~%" (fizzbuzz i))))

(run 15)
(quit)
