; Q2: Compare two unsigned numbers
; 50H and 51H
; Result stored at 52H

ORG 0000H

MOV A, 50H
CLR C
MOV R0, A        ; R0 = value at 50H
MOV A, 51H
MOV R1, A        ; R1 = value at 51H

; Check equality
MOV A, R0
XRL A, R1
JZ EQUAL

; If not equal, decrement both until one becomes zero
MOV A, R0

CHECK:
DEC R0
DEC R1
MOV A, R0
JZ LESS
MOV A, R1
JZ GREATER
SJMP CHECK

GREATER:
MOV 52H, #01H
SJMP ENDING

LESS:
MOV 52H, #0FFH
SJMP ENDING

EQUAL:
MOV 52H, #00H

ENDING:
SJMP ENDING
END
