With Ada.Text_IO;
Use Ada.Text_IO;
With Ada.Integer_Text_IO;
Use Ada.Integer_Text_IO;

procedure Program is
   procedure hanoi(n:    in integer;
                   from: in String;
                   to:   in String;
                   via:  in String) is
   begin
      if N > 1 then
         hanoi(n - 1, from, via, to);
         Ada.Text_IO.Put_Line(from & " -> " & to);
         hanoi(n - 1, via, to, from);
      else
         Ada.Text_IO.Put_Line(from & " -> " & to);
      end if;
   end hanoi;
   
n: integer;
begin
   Ada.Integer_Text_IO.Get(n);
   Hanoi(n, "a", "b", "c");
end Program;
