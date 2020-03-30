fun fizzbuzz(n: Int) {
    for (i in 1..n) {
        if (i % 15 == 0) {
            println("FizzBuzz")
        } else if (i % 3 == 0) {
            println("Fizz")
        } else if (i % 5 == 0) {
            println("Buzz")
        } else {
            println(i)
        }
    }
}

fun main(args: Array<String>) {
    fizzbuzz(15)
}
