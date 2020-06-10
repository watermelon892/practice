Module: fizzbuzz
Synopsis: 
Author: 
Copyright: 

define function main
    (name :: <string>, arguments :: <vector>)

  for (i from 1 to 15)
    if (modulo(i, 15) == 0)
      format-out("FizzBuzz\n");
    else if (modulo(i, 3) == 0)
      format-out("Fizz\n");
    else if (modulo(i, 5) == 0)
      format-out("Buzz\n");
    else
      format-out("%d\n", i);
    end if;
    end if;
    end if;
  end;

  exit-application(0);
end function main;

main(application-name(), application-arguments());
