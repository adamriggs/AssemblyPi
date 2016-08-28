@ branch to label
.global _start
_start:
	MOV R0, #0x14	@ put 20 in R0
	b other 	@ jump to the other label
	MOV R0, #0xB	@ put 11 in R0
other:
	MOV R7, #1 	@ exit with a system call
	SWI 0 		@ end program and return to terminal
