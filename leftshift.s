;Left shift one bit

	TTL Ch4Ex5 - shiftleft
	AREA mycode, CODE, READONLY
	ENTRY
main
	LDR R1, Value 			;Load value into register r1
	MOV R1, R1, LSL #0x01	;register 1 is left shift and saved in the same register r1
	LDR R2, Result			;address where the resultis to be stored is loaded into register r2
	STR	R1,[R2]				;value is stored in address which is pointed by r2
STOP B STOP
	
Value DCD &4242
Result DCD &40000000
	END