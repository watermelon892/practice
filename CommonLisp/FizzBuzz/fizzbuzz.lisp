;; ros run --load fizzbuzz.lisp

(defun fizzbuzz (n)
  (loop for i from 1 to n
        collect (cond ((= (mod i 15) 0) "FizzBuzz")
                      ((= (mod i 3) 0) "Fizz")
                      ((= (mod i 5) 0) "Buzz")
                      (t i))))

(defun main ()
  (dolist (n (fizzbuzz 15))
    (format t "~A~%" n)))

(main)
(quit)
