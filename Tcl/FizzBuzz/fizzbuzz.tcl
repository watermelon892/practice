proc fizzbuzz {n {m1 3} {m2 5}} {
    for {set i 1} {$i <= $n} {incr i} {
        set ret ""
        if {$i % $m1 == 0} {append ret Fizz}
        if {$i % $m2 == 0} {append ret Buzz}
        puts [expr {$ret eq "" ? $i : $ret}]
    }
}

fizzbuzz 15
