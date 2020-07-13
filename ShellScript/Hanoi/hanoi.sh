#!/bin/bash

hanoi() {
    local -i n=$1
    local from=$2
    local to=$3
    local via=$4
    if [ $n -gt 1 ]; then
        hanoi $n-1 $from $via $to
        echo $from " -> " $to
        hanoi $n-1 $via $to $from
    else
        echo $from " -> " $to
    fi
}

read n
hanoi $n "a" "b" "c"
