(io:format "Hello, ~s~n"
  (list
    (tref (lfe_io:read_line ">> ") 2)))
