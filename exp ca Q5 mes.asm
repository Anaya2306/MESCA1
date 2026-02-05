; Q5: Compact RAM from 40H to 5FH
; Remove FFH, shift left, fill with 00H

ORG 0000H

MOV R0, #40H     ; Read pointer
MOV R1, #40H     ; Write pointer
MOV R2, #20H     ; Count = 32 bytes

NEXT:
MOV A, @R0
INC R0
CJNE A, #0FFH, STORE
SJMP SKIP

STORE:
MOV @R1, A
INC R1

SKIP:
DJNZ R2, NEXT

; Fill remaining with 00H
MOV A, R1
MOV R0, A

FILL:
CJNE R0, #60H, CONT
SJMP DONE

CONT:
MOV @R0, #00H
INC R0
SJMP FILL

DONE:
SJMP DONE
END
