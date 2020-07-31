program Hanoi;

procedure hanoi(n: integer; from: string; _to: string; via: string);
begin
   if n > 1 then
   begin
      hanoi(n - 1, from, via, _to);
      writeln(from + ' -> ' + _to);
      hanoi(n - 1, via, _to, from)
   end
   else
      writeln(from + ' -> ' + _to)
end;

var n: integer;
begin
   readln(n);
   hanoi(n, 'a', 'b', 'c')
end.
