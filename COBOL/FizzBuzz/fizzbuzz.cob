       IDENTIFICATION DIVISION.
       PROGRAM-ID. FIZZBUZZ.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 COUNTER PIC 9(3).

       PROCEDURE DIVISION.
           PERFORM FIZZ-BUZZ
           STOP RUN.

       FIZZ-BUZZ SECTION.
           MOVE 1 TO COUNTER.
           PERFORM UNTIL COUNTER > 15
               IF FUNCTION MOD(COUNTER, 15) = 0 THEN
                   DISPLAY "FizzBuzz" UPON CONSOLE
               ELSE IF FUNCTION MOD(COUNTER, 3) = 0 THEN
                   DISPLAY "Fizz" UPON CONSOLE
               ELSE IF FUNCTION MOD(COUNTER, 5) = 0 THEN
                   DISPLAY "Buzz" UPON CONSOLE
               ELSE
                   DISPLAY COUNTER UPON CONSOLE
               END-IF
               END-IF
               END-IF
               ADD 1 TO COUNTER
           END-PERFORM.
       FIZZ-BUZZ-EXIT.
