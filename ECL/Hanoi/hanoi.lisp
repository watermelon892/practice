(defun hanoi (n from to via)
  (if (> n 1)
      (progn
        (hanoi (1- n) from via to)
        (format t "~A -> ~A~%" from to)
        (hanoi (1- n) via to from))
      (format t "~A -> ~A~%" from to)))

(let ((n (read)))
  (hanoi n "a" "b" "c"))

(quit)
