(defn fizzbuzz [n]
  (cond [(= (% n 15) 0) "FizzBuzz"]
        [(= (% n 3) 0) "Fizz"]
        [(= (% n 5) 0) "Buzz"]
        [True n]))

(for [i (range 16)]
  (print (fizzbuzz i)))
