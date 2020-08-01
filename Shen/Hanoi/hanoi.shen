(define hanoi
  N F T V -> (do
               (hanoi (- N 1) F V T)
               (output "~A -> ~A~%" F T)
               (hanoi (- N 1) V T F))
             where (> N 1)
  N F T V -> (output "~A -> ~A~%" F T))

(hanoi (read) "a" "b" "c")
