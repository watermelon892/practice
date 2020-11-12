(let ((a (string->number (read-line)))
      (b (string->number (read-line))))
  (display (format "~A + ~A = ~A\n" a b (+ a b))))
