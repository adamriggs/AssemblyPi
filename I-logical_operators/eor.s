@ eor example
.global _start
_start:
	MOV R1, #5	@ 0101
	MOV R2, #9	@ 1001
	EOR R0, R1, R2	@ result is 1100 or 12
end:
	MOV R7, #1
	SWI 0
