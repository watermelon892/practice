;; Install Arc
;; https://github.com/arclanguage/arc-nu
;;
;; $ path/to/arc-nu/arc
;; > (load "./hanoi.arc")

(def hanoi (n from to via)
  (if (> n 1)
      (do
        (hanoi (- n 1) from via to)
        (prn from " -> " to)
        (hanoi (- n 1) via to from))
      (prn from " -> " to)))

(hanoi (read) "a" "b" "c")
