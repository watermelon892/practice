<?php
function hanoi($n, $from, $to, $via) {
  if ($n > 1) {
    hanoi($n - 1, $from, $via, $to);
    print $from . " -> " . $to . "\n";
    hanoi($n - 1, $via, $to, $from);
  } else {
    print $from . " -> " . $to . "\n";
  }
}

$n = ((int)fgets(STDIN));
hanoi($n, "a", "b", "c");
