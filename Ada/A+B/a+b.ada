With Ada.Text_IO;
Use Ada.Text_IO;
With Ada.Integer_Text_IO;
Use Ada.Integer_Text_IO;

procedure Program is
a: integer;
b: integer;
begin
   Ada.Integer_Text_IO.Get(a);
   Ada.Integer_Text_IO.Get(b);
   Ada.Text_IO.Put_Line(Integer'Image(a + b));
end Program;
