(defun hanoi (n from to via)
  (if (> n 1)
      (progn
        (hanoi (1- n) from via to)
        (princ (format "%s -> %s\n" from to))
        (hanoi (1- n) via to from))
      (princ (format "%s -> %s\n" from to))))

;; (let ((n (read)))
;;   (hanoi n "a" "b" "c"))

(hanoi 3 "a" "b" "c")
