000000 IDENTIFICATION DIVISION.
000010 PROGRAM-ID.    HELLO.
       ENVIRONMENT DIVISION.
        INPUT-OUTPUT SECTION.
          FILE-CONTROL.
            SELECT IN-FILE ASSIGN TO 'in.txt'
              ORGANIZATION IS LINE SEQUENTIAL
              STATUS IN-FILE-STATUS.
       DATA DIVISION.
         FILE SECTION.
          FD IN-FILE.
            01 IN-FILE-REC PIC x(20).
         WORKING-STORAGE SECTION.
          01 IN-FILE-STATUS PIC XX.
000020 PROCEDURE      DIVISION.
000030   MAIN           SECTION.
            OPEN INPUT IN-FILE.

            PERFORM UNTIL IN-FILE-STATUS NOT = "00"
              READ IN-FILE
                AT END
                  DISPLAY "-- end --"
                NOT AT END
                  DISPLAY "Content: " IN-FILE-REC
              END-READ
            END-PERFORM.

            CLOSE IN-FILE.
            
000040      STOP  RUN.