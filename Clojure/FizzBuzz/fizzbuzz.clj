(defn fizzbuzz [n]
  (cond (= (rem n 15) 0) "FizzBuzz"
        (= (rem n  3) 0) "Fizz"
        (= (rem n  5) 0) "Buzz"
        :else (str n)))

(defn start [n]
  (take n (map fizzbuzz (iterate inc 1))))

(println (start 10))
