function hanoi(n as integer, from as string, _to as string, via as string) as integer
  If n > 1 Then
    hanoi(n - 1, from, via, _to)
    print from + " -> " + _to
    hanoi(n - 1, via, _to, from)
  Else
    print from + " -> " + _to
  End If
end function

Dim n As Integer
n = ValInt(input(1))
print n

hanoi(n, "a", "b", "c")
