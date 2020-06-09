Module Program
    Function fizzbuzz(i As Integer) As String
        If i Mod 15 = 0 Then
            Return "FizzBuzz"
        ElseIf i Mod 3 = 0 Then
            Return "Fizz"
        ElseIf i Mod 5 = 0 Then
            Return "Buzz"
        Else
            Return i.ToString
        End If
    End Function

    Sub Run(n As Integer)
        For i As Integer = 1 To n
            Console.WriteLine(fizzbuzz(i))
        Next
    End Sub

    Sub Main(args As String())
        Run(15)
    End Sub
End Module
