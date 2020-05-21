;; Install Arc
;; https://github.com/arclanguage/arc-nu
;;
;; $ path/to/arc-nu/arc
;; > (load "./fizzbuzz.arc")

(for i 1 15
  (prn:if
    (multiple i 15) 'FizzBuzz
    (multiple i  3) 'Fizz
    (multiple i  5) 'Buzz
    i))
