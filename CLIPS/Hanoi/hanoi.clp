(deffacts hanoi (goals tower of 3 A B C))

(defrule move-tower
  ?old-goals <- (goals tower of ?number&~1 ?from ?to ?via $?rest)
  =>
  (retract ?old-goals)
  (assert (goals tower of =(- ?number 1) ?from ?via ?to
    tower of 1 ?from ?to ?via
    tower of =(- ?number 1) ?via ?to ?from ?rest)))

(defrule move-tower-with-one-disk
  ?old-goals <- (goals tower of 1 ?from ?to ?via $?rest)
  =>
  (retract ?old-goals)
  (assert (goals disk ?from ?to ?rest)))

(defrule move-one-disk
  ?old-goals <- (goals disk ?from ?to $?rest)
  =>
  (retract ?old-goals)
  (printout t ?from " -> " ?to crlf)
  (assert (goals ?rest)))

(reset)
(run)
(exit)
