      program TEST
         character name*32
         read(*, '(a)') name
         print*, 'Hello, ', name
         stop
      end
