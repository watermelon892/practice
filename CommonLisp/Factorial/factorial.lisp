(defun factorial (n)
  (if (zerop n)
      1
      (* n (factorial (1- n)))))

(let ((n (read)))
  (format t "~A~%" (factorial n)))

(quit)
