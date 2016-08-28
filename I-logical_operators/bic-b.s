@ convert to uppercase with BIC
.global _start
_start:
	MOV R7, #3		@ syscall read from keyboard
	MOV R0, #0		@ input stream keyboard
	MOV R2, #1		@ read 1 character
	LDR R1, =character	@ put character in character
	SWI 0

_uppercase:
	LDR R1, =character	@ get address to character
	LDR R0, [R1]		@ load character into r0
	
	@ zero out 6th bit
	@ a : 0110 0001
	@   : 0010 0000
	@ A : 0100 0001
	BIC R0, R0, #32

	STR R0, [R1]		@ store character with address stored in R1 in R0

_write:
	MOV R7, #4 		@ syscall to output to screen
	MOV R0, #1		@ output to monitor
	MOV R2, #1		@ # of characte to write
	LDR R1, =character	@ print character in character
	SWI 0

end:
	MOV R7, #1
	SWI 0

.data
character:
	.ascii " "
