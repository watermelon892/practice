(define fizzbuzz
  I -> "FizzBuzz" where (= 0 (shen.mod I 15))
  I -> "Fizz" where (= 0 (shen.mod I 3))
  I -> "Buzz" where (= 0 (shen.mod I 5))
  I -> (str I))

(define num-list
  I N -> [] where (> I N)
  I N -> [I | (num-list (+ 1 I) N)])

(define run-program
  N -> (let ret (map fizzbuzz (num-list 1 N))
         (map (/. S (output "~A~%" S)) ret)))

(run-program 15)
