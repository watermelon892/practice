program FizzBuzz;

var i: Integer;

begin
   for i := 1 to 15 do
   begin
      if i mod 15 = 0 then
         writeln ('FizzBuzz')
      else if i mod 3 = 0 then
         writeln ('Fizz')
      else if i mod 5 = 0 then
         writeln ('Buzz')
      else
         writeln (i)
   end;
end.
