-module(hello).
-export([main/0]).

main() ->
  Name = read_string(),
  io:format("Hello, ~s~n", [Name]).

read_string() ->
  case io:fread("", "~s") of
    eof -> 0;
    {ok, X} ->
      [Y] = X,
      Y
  end.
