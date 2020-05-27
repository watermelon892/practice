(de fizzbuzz (i)
    (cond ((=0 (% i 15)) "FizzBuzz")
          ((=0 (% i  3)) "Fizz")
          ((=0 (% i  5)) "Buzz")
          i))

(de run (n)
  (let i 1
    (loop
      (prinl (fizzbuzz i))
      (T (= (inc 'i) (+ n 1)) 'done))))

(run 15)
