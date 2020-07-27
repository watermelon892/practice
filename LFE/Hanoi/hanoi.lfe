(defun hanoi (n from to via)
  (cond ((> n 1)
         (hanoi (- n 1) from via to)
         (io:format "~s -> ~s~n" (list from to))
         (hanoi (- n 1) via to from))
        ('true
         (io:format "~s -> ~s~n" (list from to)))))

(hanoi 3 "a" "b" "c")
