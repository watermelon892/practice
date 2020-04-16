% $ gprolog
% [fizzbuzz].
% run.

fizzbuzz(I, 'FizzBuzz') :- I mod 3 =:= 0, I mod 5 =:= 0.
fizzbuzz(I, 'Fizz')     :- I mod 3 =:= 0, I mod 5 =\= 0.
fizzbuzz(I, 'Buzz')     :- I mod 3 =\= 0, I mod 5 =:= 0.
fizzbuzz(I, I)          :- I mod 3 =\= 0, I mod 5 =\= 0.

println(X) :- print(X), nl.

run :-
  bagof(Num, between(1, 15, Num), Numlist),
  maplist(fizzbuzz, Numlist, FBList),
  maplist(println, FBList),
  halt.
