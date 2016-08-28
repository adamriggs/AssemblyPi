@ compare values and branch
.global _start
_start:
	MOV R1, #5
	MOV R2, #10
	CMP R1, R2 		@ compare values setting flags
	BEQ vals_equal		@ if equal jump to vals_equal (zero flag set)
	BGT r1_gt		@ if R1 is greater jump to r1_gt (negative flag set)

@ come here next by default
r1_lt:
	MOV R0, #2
	B end
r1_gt:
	MOV R0, #3
	B end
vals_equal:
	MOV R0, #1
end:
	MOV R7, #1
	SWI 0
