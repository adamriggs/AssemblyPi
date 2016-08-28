@ add
.global _start
_start:
	MOV R1, #0xA @ put 10 in R1
	ADD R0, R1, #0x14 @add 10 + 20, store in R0
	MOV R7, #1 @ exit with a system call
	SWI 0 @ end program and return to terminal
