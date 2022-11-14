; Program to read 5 32-bit numbers from 0x4000 0000 and store from 0x4000 ff00
	TTL Ch4Ex5 -5 32-bit transfer 
	AREA	Program, CODE, READONLY	
	ENTRY
Main
	LDR R0, =0x40000000 			;load the initial address of the block of data
	LDR R7, =0x4000FF00 			;load the initial adress of location the data needs to be stored
	
	LDM R0!, {R1-R5}
	STM R7!, {R1-R5}
	NOP
STOP B STOP
	END