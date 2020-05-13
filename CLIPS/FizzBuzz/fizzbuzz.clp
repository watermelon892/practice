(defmethod fizzbuzz ((?i NUMBER))
  (if (= (mod ?i 15) 0)
      then
      (printout t "FizzBuzz" crlf)
      else
      (if (= (mod ?i 3) 0)
          then
          (printout t "Fizz" crlf)
          else
          (if (= (mod ?i 5) 0)
              then
              (printout t "Buzz" crlf)
              else
              (printout t ?i crlf)))))

(defmethod run ((?n NUMBER))
  (loop-for-count (?i ?n)
    (fizzbuzz ?i)))

(run 15)

(exit)
