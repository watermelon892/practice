Imports System

Public Class Hanoi
  Public Sub HanoiExec(n As Integer, from As String, to_ As String, via As String)
    If n > 1 Then
      Call HanoiExec(n - 1, from, via, to_)
      Console.WriteLine(from & " -> " & to_)
      Call HanoiExec(n - 1, via, to_, from)
    Else
      Console.WriteLine(from & " -> " & to_)
    End If
  End Sub

  Public Shared Sub Main()
    Dim n As Integer
    n = Console.ReadLine()
    Dim h As New Hanoi
    h.HanoiExec(n, "a", "b", "c")
  End Sub
End Class
