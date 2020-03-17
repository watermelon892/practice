% erl fizzbuzz.erl
% c(fizzbuzz).
% fizzbuzz:run().

-module(fizzbuzz).
-export([run/0]).

fizzbuzz(16) -> ok;
fizzbuzz(Count) ->
    if
      Count rem 15 == 0 -> io:fwrite("FizzBuzz\n");
      Count rem 3 == 0 -> io:fwrite("Fizz\n");
      Count rem 5 == 0 -> io:fwrite("Buzz\n");
      true -> io:format("~p~n", [Count])
    end,
    fizzbuzz(Count + 1).

run() ->
    fizzbuzz(1).
