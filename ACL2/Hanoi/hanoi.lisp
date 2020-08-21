(defun hanoi (n from to via)
  (declare (xargs :guard (and (integerp n) (>= n 0))))
  (cond ((zp n) (cw "~s0 -> ~s1~%" from to))
        (t (prog2$
            (prog2$
             (hanoi (1- n) from via to)
             (cw "~s0 -> ~s1~%" from to))
            (hanoi (1- n) via to from)))))

(hanoi 2 "a" "b" "c")

(run)
(good-bye)
