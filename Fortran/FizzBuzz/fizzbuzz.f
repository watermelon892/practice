      subroutine fizzbuzz(n)
         do i = 1, n
            if(mod(i, 15) == 0) then
               write(*, fmt='(a)') 'FizzBuzz'
            else if(mod(i, 3) == 0) then
               write(*, fmt='(a)') 'Fizz'
            else if(mod(i, 5) == 0) then
               write(*, fmt='(a)') 'Buzz'
            else
               write(*, '(I0)') i
            end if
         end do
      end subroutine

      program main
         call fizzbuzz(15)
      end program main
