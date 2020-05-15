(define (fizzbuzz i)
  (cond ((= (modulo i 15) 0) "FizzBuzz")
        ((= (modulo i  3) 0) "Fizz")
        ((= (modulo i  5) 0) "Buzz")
        (else i)))

(define (run i n)
  (when (<= i n)
    (display (fizzbuzz i))
    (newline)
    (run (+ i 1) n)))

(run 1 15)
