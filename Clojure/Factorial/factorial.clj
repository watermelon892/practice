(defn factorial [x]
  (apply * (range 2 (inc x))))

(defn main []
  (let [x (read-line)]
    (println (factorial (read-string x)))))

(main)
