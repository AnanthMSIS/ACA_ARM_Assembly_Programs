;if input is 5f then output should be 050f
	AREA RESET, CODE, READONLY
	ENTRY
Main
	LDR R1, Value 			; LOAD THE BYTE VALUE INTO R1
	LDR R2, Mask			; Load mask in r2 
	MOV R3, R1, LSR #0x4	; Right shift 4 bits to get higher order nibble
	MOV R3, R3, LSL #0x8	; Left shift 8 bits to make space of 8 bits for lower order nibble
	AND R1, R1, R2			; Perform AND operation of mask and input to get lower order nibble
	ADD R1, R1, R3			; Perform addition to get final output
	;store data in memory
	LDR R4, Result
	STR R1, [R4]
	
	;NOP
STOP B STOP
Value DCB &5F				;defining input of size byte
	ALIGN					;restraining reg to byte
Mask  DCW &000F 			;defining mask of size word
	ALIGN					;restraining reg to word
Result DCD &40000000
	END