(defn main []
  (let [a (read-string (read-line))
        b (read-string (read-line))]
    (println (format "%d + %d = %d" a b (+ a b)))))

(main)
