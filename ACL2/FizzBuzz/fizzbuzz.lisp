(defun fizzbuzz (i)
  (declare (xargs :measure (nfix (- 15 i))))
  (prog2$
   (cond ((zp (mod i 15)) (cw "FizzBuzz~%"))
         ((zp (mod i  3)) (cw "Fizz~%"))
         ((zp (mod i  5)) (cw "Buzz~%"))
         (t (cw "~x0~%" i)))
   (if (zp (- 15 i))
       nil
       (fizzbuzz (1+ i)))))

(defun run ()
  (fizzbuzz 1))

(run)
(good-bye)
