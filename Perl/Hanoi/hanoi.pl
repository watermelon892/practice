sub hanoi {
    my ($n, $from, $to, $via) = @_;
    if ($n > 1) {
        &hanoi($n - 1, $from, $via, $to);
        print $from . " -> " . $to . "\n";
        &hanoi($n - 1, $via, $to, $from);
    } else {
        print $from . " -> " . $to . "\n";
    }
}

my $n = <STDIN>;
&hanoi($n, "a", "b", "c");
