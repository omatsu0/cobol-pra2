000000 IDENTIFICATION DIVISION.
000010 PROGRAM-ID.    HELLO.
       DATA DIVISION.
         WORKING-STORAGE SECTION.
          01 MY-SIGNAL PIC X(5).
000020 PROCEDURE      DIVISION.
000030   MAIN           SECTION.
            MOVE "eeeaaa" TO MY-SIGNAL.
            EVALUATE MY-SIGNAL
              WHEN "red"
              WHEN "green"
                DISPLAY "GO!"
              WHEN "yellow"
                DISPLAY "Caution!"
              WHEN OTHER
                DISPLAY "Wrong Signal!"
            END-EVALUATE.
000040      STOP  RUN.