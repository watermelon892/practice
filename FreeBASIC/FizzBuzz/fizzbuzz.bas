Dim As ULong i

For i = 1 To 15
  If i Mod 15 = 0 Then
    Print "FizzBuzz"
  ElseIf i Mod 3 = 0 Then
    Print "Fizz"
  ElseIf i Mod 5 = 0 Then
    Print "Buzz"
  Else
    Print i
  End If
Next i
