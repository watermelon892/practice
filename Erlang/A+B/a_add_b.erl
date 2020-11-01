-module(a_add_b).
-export([main/0]).

main() ->
  A = read_num(),
  B = read_num(),
  io:format("~s + ~s = ~s~n",
          [[integer_to_list(A)],
           [integer_to_list(B)],
           [integer_to_list(A + B)]]).

read_num() ->
  case io:fread("", "~d") of
    eof -> 0;
    {ok, X} ->
      [Y] = X,
      Y
  end.
