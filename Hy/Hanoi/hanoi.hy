(defn hanoi [n from to via]
  (if (> n 1)
      (do
        (hanoi (dec n) from via to)
        (print (.format "{0} -> {1}" from to))
        (hanoi (dec n) via to from))
      (print (.format "{0} -> {1}" from to))))

(setv n (read))
(hanoi n "a" "b" "c")
