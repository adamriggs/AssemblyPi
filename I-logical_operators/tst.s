@ tst (TeSt biTs) performs and and on bits and updates the zero flas CPSR
.global _start
_start:
	MOV R1, #9		@ 1001
	MOV R2, #8		@ 1000
	TST R1, R2		@ compare values setting flags
	BEQ _bit_set		@ if set jump to bit_set (zero flag set)
	MOV R0, #1		@ set output to false
	B end			@ jump to end

_bit_set:
	MOV R0, #0 		@ set output to true

end:
	MOV R7, #1
	SWI 0
