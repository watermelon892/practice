(define (fizzbuzz i)
  (cond ((= 0 (% i 15)) "FizzBuzz")
        ((= 0 (% i  3)) "Fizz")
        ((= 0 (% i  5)) "Buzz")
        ('t i)))

(define (run n)
  (for (i 1 n 1)
    (println (fizzbuzz i))))

(run 15)

(exit)
