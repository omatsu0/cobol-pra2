000000 IDENTIFICATION DIVISION.
000010 PROGRAM-ID.    HELLO.
       DATA DIVISION.
         WORKING-STORAGE SECTION.
          01 MY-COUNTER PIC 9(3) VALUE 1.
000020 PROCEDURE      DIVISION.
000030   MAIN           SECTION.
            *> PERFORM 10 TIMES
            *>   DISPLAY "counter = " MY-COUNTER
            *>   ADD 1 TO MY-COUNTER
            *> END-PERFORM.

            *> PERFORM UNTIL MY-COUNTER > 10
            *>   DISPLAY "counter = " MY-COUNTER
            *>   ADD 1 TO MY-COUNTER
            *> END-PERFORM.

            PERFORM VARYING MY-COUNTER FROM 1 BY 3 UNTIL MY-COUNTER > 10
              DISPLAY "counter = " MY-COUNTER
            END-PERFORM.
000040      STOP  RUN.