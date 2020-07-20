(de hanoi (n from to via)
  (cond ((> n 1)
         (hanoi (- n 1) from via to)
         (println from '-> to)
         (hanoi (- n 1) via to from))
        (t
         (println from '-> to))))

(in LIL (hanoi (read) 'a 'b 'c))
