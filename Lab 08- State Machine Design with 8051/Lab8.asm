	ORG	00H
	AJMP	MAIN

MAIN:	MOV	A, #00H
	MOV	P1,A
	MOV	A,#0FFH
	MOV	P2,A

START:	JNB	P2.0,STOP
	MOV	A,#00H
	MOV	P1,A
	ACALL	SDELAY
	SJMP	START

STOP:	MOV	A,#00H
	MOV	P2,A
	MOV	A,#01H
	MOV	P1,A
	ACALL	LDELAY

SDELAY:	MOV	R1,#0FH
D1:	DJNZ	R1,D1

LDELAY:	MOV	R2,#050H
D2:	DJNZ	R2,D2

END