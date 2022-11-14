; Find the length of a CR terminated string

	TTL	Ch6Ex1 - strlencr

CR	EQU	0x0D

	AREA	Program, CODE, READONLY	
	ENTRY

Main
	LDR	R0, =Table		; Load the address of the lookup table
	EOR	R1, R1, R1		; Clear R1 to store count
Loop
	LDRB	R2, [R0], #1		; Load the first byte into R2
	CMP	R2, #CR			; Is it the terminator ?
	BEQ	Done			; Yes => Stop loop
	ADD	R1, R1, #1		; No  => Increment count
	B	Loop			; Read next char

Done
	LDR	R5, =CharCount
	STR R1, [R5]; Store result
STOP B STOP


Table	DCB	"Hello, World", CR
	ALIGN
CharCount DCD	0			; Storage for count

	END