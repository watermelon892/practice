(defn hanoi [n from to via]
  (if (> n 1)
    (do
      (hanoi (dec n) from via to)
      (println (format "%s -> %s" from to))
      (hanoi (dec n) via to from))
    (println (format "%s -> %s" from to))))

(defn main []
  (let [n (read-line)]
    (hanoi (read-string n) 'a 'b 'c)))

(main)
