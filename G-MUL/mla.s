@ mla
.global _start
_start:
	MOV R1, #0x14 		@ put 20 in R1
	MOV R2, #0xA 		@ put 10 in R2
	MOV R3, #0x5 		@ put 5 in R3
	MLA R0, R1, R2, R3	@ (r1*R2) + R3, store in R0
	MOV R7, #1 		@ exit with a system call
	SWI 0			@ end program and retur to terminal
