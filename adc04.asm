;Created by the project wizard

ORG 00H


MOV P1,#11111111B 
MOV P2,#00000000B 
MAIN: CLR P3.7
      SETB P3.6
      CLR P3.5 
      SETB P3.5 
WAIT: JB P3.4,WAIT 
      CLR P3.7 
      CLR P3.6
      ACALL DELAY 
      MOV A,P1 
      MOV P2,A
      ACALL DELAY
      SETB P3.4
      SJMP MAIN 
     
      
ORG 210H 
DELAY:MOV R0,9FH
      MOV R1,9FH			;delay subroutine
AGAIN:DJNZ R1, AGAIN
AGAIN:DJNZ R0, AGAIN
      RET
      
      END	