(defn get-http [url]
  (let [sc (java.util.Scanner. (.openStream (java.net.URL. url)))]
    (while (.hasNext sc)
      (println (.nextLine sc)))))

(defn main []
  (get-http "https://clojure.org/"))

(main)
