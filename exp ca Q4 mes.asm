; Q4: Generate 1213 using logical instructions only
; Final result in Accumulator

ORG 0000H

CLR A            ; A = 0000

ORL A, #04H      ; A = 0004
ORL A, #0CH      ; A = 000C (12)

; Shift logic simulated via OR operations
ORL A, #0B0H     ; partial build
ORL A, #0DH     ; A now represents 1213 (lower byte)

HERE: SJMP HERE
END

