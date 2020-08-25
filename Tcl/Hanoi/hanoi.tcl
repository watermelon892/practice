proc hanoi {n from to via} {
    if {$n > 1} {
        hanoi [expr {$n - 1}] $from $via $to
        puts "$from -> $to"
        hanoi [expr {$n - 1}] $via $to $from
    } else {
        puts "$from -> $to"
    }
}

set n [gets stdin]
hanoi $n "a" "b" "c"
