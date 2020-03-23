with Ada.Text_IO;

procedure FizzBuzz is
begin
   for I in 1 .. 15 loop
      if I mod 15 = 0 then
         Ada.Text_IO.Put_Line("FizzBuzz");
      elsif I mod 3 = 0 then
         Ada.Text_IO.Put_Line("Fizz");
      elsif I mod 5 = 0 then
         Ada.Text_IO.Put_Line("Buzz");
      else
         Ada.Text_IO.Put_Line(Integer'Image(I));
      end if;
   end loop;
end FizzBuzz;
