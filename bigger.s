; Find the biggest of 2 32 bit numbers
	TTL Ch4Ex5 - bigger
	AREA RESET, CODE, READONLY
	ENTRY
Main
	LDR R1, Value1			;Load value1 in R1
	LDR R1, [R1]			;Load value which is pointed by the address in R1
	LDR R2, Value2			;Load value2 in R2
	LDR R2, [R2]			;Load value which is pointed by the address in R2
	CMP R1, R2				;Compare r1 and r2 and set corresponding flag bits
	BHI last				;Branch if r1 > r2
	MOV R1, R2				;else move r2 value in r1
last LDR R3, Result			;load value in result into r3	
	STR R1, [R3]			;store r1 in the adress location pointed by r3	
STOP B STOP

Value1 DCD &40000000
Value2 DCD &40000004
Result DCD &4000000C
	END
	