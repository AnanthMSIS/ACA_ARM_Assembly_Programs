; Program to read 2 16-bit data(half word) from memory, add them and store it back in memory
	TTL Ch4Ex5 - read half word 
	AREA	Program, CODE, READONLY	
	ENTRY
Main
	LDR R0, =0x40000000
	LDRH R0, [R0]
	LDR R1, =0x40000002 
	LDRH R1, [R1]
	ADD R0, R0, R1
	LDR R1, =0x4000F000
	STRH R0, [R1]
STOP B STOP
	END
	