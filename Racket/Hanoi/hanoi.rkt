(define (hanoi n from to via)
  (if (> n 1)
      (begin
        (hanoi (- n 1) from via to)
        (display (format "~A -> ~A\n" from to))
        (hanoi (- n 1) via to from))
      (display (format "~A -> ~A\n" from to))))

(hanoi (string->number (read-line)) "a" "b" "c")
