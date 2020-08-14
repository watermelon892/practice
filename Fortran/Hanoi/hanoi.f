      program TEST
         integer:: n = 0
         character(len = 1) :: a, b, c
         a = 'a'
         b = 'b'
         c = 'c'
         read*, n
         call hanoi(n, a, b, c)
         stop
      end

      recursive subroutine hanoi(n, from, to, via)
         integer, intent(in) :: n
         character(len = 1), intent(in) :: from, to, via
         if (n > 1) then
            call hanoi(n - 1, from, via, to)
            print*, from, ' -> ', to
            call hanoi(n - 1, via, to, from)
         else
            print*, from, ' -> ', to
         end if
      end
