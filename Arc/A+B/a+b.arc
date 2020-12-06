;; Install Arc
;; https://github.com/arclanguage/arc-nu
;;
;; $ path/to/arc-nu/arc
;; > (load "./hello.arc")

(let a (read)
  (let b (read)
    (prn a " + " b " = " (+ a b))))
