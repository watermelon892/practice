class Hanoi {
  def exec(n: Int, from: String, to: String, via: String) {
    if (n > 1) {
      exec(n - 1, from, via, to)
      println("%s -> %s".format(from, to))
      exec(n - 1, via, to, from)
    } else {
      println("%s -> %s".format(from, to))
    }
  }
}

object Main {
  def main(args: Array[String]) {
    var n = io.StdIn.readLine.toInt
    val h = new Hanoi
    h.exec(n, "a", "b", "c")
  }
}
