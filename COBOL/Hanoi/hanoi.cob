       IDENTIFICATION DIVISION.
       PROGRAM-ID.    THE-TOWER-OF-HANOI.

       ENVIRONMENT DIVISION.

       DATA DIVISION.

       WORKING-STORAGE SECTION.
       01  STACK-AREA.
           02  ESP              PIC S9(3) COMP.
           02  STACK-FRAME      OCCURS 1024.
               03  STACK-DISKS  PIC 9(1).
               03  STACK-FROM   PIC X(1).
               03  STACK-TO     PIC X(1).
               03  STACK-VIA    PIC X(1).
               03  STACK-ACT    PIC 9(1).

       01  CURRENT-FRAME.
           02  CURRENT-DISKS    PIC 9(1)  VALUE 3.
           02  CURRENT-FROM     PIC X(1)  VALUE "A".
           02  CURRENT-TO       PIC X(1)  VALUE "B".
           02  CURRENT-VIA      PIC X(1)  VALUE "C".
           02  CURRENT-ACT      PIC 9(1)  VALUE 0.

       01  TEMP-FRAME.
           02  TEMP-DISKS       PIC 9(1).
           02  TEMP-FROM        PIC X(1).
           02  TEMP-TO          PIC X(1).
           02  TEMP-VIA         PIC X(1).
           02  TEMP-ACT         PIC 9(1).

       PROCEDURE  DIVISION.
       HANOI-START.
           ACCEPT CURRENT-DISKS.

           MOVE  1                  TO  ESP.
           MOVE  CURRENT-FRAME      TO  STACK-FRAME (ESP).
           PERFORM  DO-HANOI
               UNTIL  ESP = ZERO.
           STOP RUN.

       DO-HANOI.
           MOVE  STACK-FRAME (ESP)  TO  CURRENT-FRAME.
           SUBTRACT  1            FROM  ESP.
           IF CURRENT-ACT = 0
               IF CURRENT-DISKS = 1
                   DISPLAY  CURRENT-FROM " -> " CURRENT-TO
               ELSE
                   MOVE  CURRENT-FRAME  TO  TEMP-FRAME
                   MOVE  1              TO  TEMP-ACT
                   ADD   1              TO  ESP
                   MOVE  TEMP-FRAME     TO  STACK-FRAME (ESP)
                   MOVE  CURRENT-DISKS  TO  TEMP-DISKS
                   MOVE  CURRENT-FROM   TO  TEMP-FROM
                   MOVE  CURRENT-TO     TO  TEMP-VIA
                   MOVE  CURRENT-VIA    TO  TEMP-TO
                   SUBTRACT  1        FROM  TEMP-DISKS
                   MOVE  0              TO  TEMP-ACT
                   ADD   1              TO  ESP
                   MOVE TEMP-FRAME      TO  STACK-FRAME (ESP)
               END-IF
           ELSE
               DISPLAY CURRENT-FROM " -> " CURRENT-TO
               MOVE  CURRENT-DISKS  TO  TEMP-DISKS
               MOVE  CURRENT-FROM   TO  TEMP-VIA
               MOVE  CURRENT-VIA    TO  TEMP-FROM
               MOVE  CURRENT-TO     TO  TEMP-TO
               MOVE  0              TO  TEMP-ACT
               SUBTRACT  1        FROM  TEMP-DISKS
               ADD   1              TO  ESP
               MOVE TEMP-FRAME      TO  STACK-FRAME (ESP)
           END-IF.
