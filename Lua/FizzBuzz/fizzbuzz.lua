function fizzbuzz(n)
   local i = 1;
   while(i <= n)
   do
      if(i % 15 == 0) then
         print("FizzBuzz")
      elseif(i % 3 == 0) then
         print("Fizz")
      elseif(i % 5 == 0) then
         print("Buzz")
      else
         print(i)
      end
      i = i + 1;
   end
end

fizzbuzz(15)
