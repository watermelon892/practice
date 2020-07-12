-module(hanoi).
-export([main/0]).

main() ->
  N = read_num(),
  hanoi(N, "a", "b", "c").

read_num() ->
  case io:fread("", "~d") of
    eof -> 0;
    {ok, X} ->
      [Y] = X,
      Y
  end.

hanoi(1, From, To, _Via) -> io:format("~s -> ~s~n", [From, To]);
hanoi(N, From, To, Via) when N > 0 ->
  hanoi(N - 1, From, Via, To),
  io:format("~s -> ~s~n", [From, To]),
  hanoi(N - 1, Via, To, From).
