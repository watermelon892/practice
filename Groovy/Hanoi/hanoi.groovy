class Hanoi {
  def exec(int n, String from, String to, String via) {
    if (n > 1) {
      exec(n - 1, from, via, to)
      println(from + " -> " + to)
      exec(n - 1, via, to, from)
    } else {
      println(from + " -> " + to)
    }
  }
}

Scanner cin = new Scanner(System.in)
String n = cin.nextLine()
Hanoi h = new Hanoi()
h.exec(Integer.decode(n), "a", "b", "c")
