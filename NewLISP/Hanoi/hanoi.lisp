(define (hanoi n from to via)
  (cond ((> n 1)
         (hanoi (- n 1) from via to)
         (println from " -> " to)
         (hanoi (- n 1) via to from))
        ('t
         (println from " -> " to))))

(hanoi (int (read-line)) "a" "b" "c")
(exit)
