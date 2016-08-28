@subtract
.global _start
_start:
	MOV R1, #0x14 @ put 20 in R1
	SUB R0, R1, #0xA @ subtract 20-10, store in R0
	MOV R7, #1 @ exit with a system call
	SWI 0 @ end program and return to terminal
