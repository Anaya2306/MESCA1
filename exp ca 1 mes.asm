; Q1: Generate last four digits of PRN (1213)
; Arithmetic instructions only
; Final result in Accumulator A

ORG 0000H

MOV A, #00H      ; A = 0

; Build 12
ADD A, #0CH      ; A = 12

; Multiply by 100 -> 12 * 100 = 1200
MOV B, #64H      ; 100 in hex
MUL AB           ; A = 1200 (04B0H), lower byte in A

; Add 13
ADD A, #0DH      ; A = 1213 (lower byte)

HERE: SJMP HERE
END
