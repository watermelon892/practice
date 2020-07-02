import java.util.*

fun hanoi(n: Int, from: String, to: String, via: String) {
  if (n > 1) {
    hanoi(n - 1, from, via, to)
    println(from + " -> " + to)
    hanoi(n - 1, via, to, from)
  } else {
    println(from + " -> " + to)
  }
}

fun main(args: Array<String>) {
  val n = Scanner(System.`in`)
  hanoi(n.next().toInt(), "a", "b", "c")
}
