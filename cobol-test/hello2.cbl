000000 IDENTIFICATION DIVISION.
000010 PROGRAM-ID.    HELLO.
       DATA DIVISION.
         WORKING-STORAGE SECTION.
          01 MY-DATA.
              03 D1 PIC 99999 VALUE 0.
              03 D2 PIC 99999 VALUE 0.
              03 D3 PIC 99999 VALUE 0.
              03 D4 PIC 99999 VALUE 0.
000020 PROCEDURE      DIVISION.
000030 MAIN           SECTION.
            *> ADD 5 TO D1 D2 D3.
            *> SUBTRACT 2 FROM D1 D2.
            MOVE 10 TO D1.
            MOVE 3 TO D2.
            *> DIVIDE D1 BY D2 GIVING D3 REMAINDER D4.
            *> MULTIPLY D1 BY D2 GIVING D3.
            COMPUTE D3 = D1 * D2. *> + - / * **
            DISPLAY MY-DATA.
000040 STOP           RUN.