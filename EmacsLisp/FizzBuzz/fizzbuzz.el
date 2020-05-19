(defun fizzbuzz (i)
  (cond ((= (% i 15) 0) "FizzBuzz")
        ((= (% i  3) 0) "Fizz")
        ((= (% i  5) 0) "Buzz")
        (t i)))

(defun run (n)
  (let ((i 1) ret)
    (while (<= i n)
      (setq ret (cons (fizzbuzz i) ret))
      (setq i (1+ i)))
    (nreverse ret)))

(let ((ret (run 15)))
  (dolist (l ret)
    (princ-list l)))
