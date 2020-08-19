func hanoi(Num n: Int, From from: String, To to: String, Via via: String) {
    if (n > 1) {
        hanoi(Num: n - 1, From: from, To: via, Via: to)
        print(from + " -> " + to)
        hanoi(Num: n - 1, From: via, To: to, Via: from)
    } else {
        print(from + " -> " + to)
    }
}

let n = Int(readLine()!)!
hanoi(Num: Int(n), From: "a", To: "b", Via: "c")
