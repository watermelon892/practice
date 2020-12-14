(let ((a (tref (lfe_io:read_line ">> ") 2))
      (b (tref (lfe_io:read_line ">> ") 2)))
  (io:format "Result: ~p~n" (list (+ a b))))
