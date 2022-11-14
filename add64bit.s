;	64 bit addition
; after you start debug, you need to memory map the memory address 
	TTL Ch4Ex5 -64 bit addition
	AREA	Program, CODE, READONLY	
	ENTRY

Main
	LDR	R0, Value1		; Pointer to first value
	LDR	R1, [R0]		; Load first part of value1
	LDR	R2, [R0, #4]	; Load lower part of value1
	LDR	R0, Value2		; Pointer to second value
	LDR	R3, [R0]		; Load upper part of value2
	LDR	R4, [R0, #4]	; Load lower part of value2
	ADDS R6, R2, R4		; Add lower 4 bytes and set carry flag
	ADC	R5, R1, R3		; Add upper 4 bytes including carry	
;store data in 4000ff00
	LDR	R0, Result		; Pointer to Result
	STR	R5, [R0]		; Store upper part of result
	STR	R6, [R0, #4]		; Store lower part of result
STOP B STOP

Value1 DCD &40000000
Value2 DCD &40000008
Result DCD &4000FF00
	END
