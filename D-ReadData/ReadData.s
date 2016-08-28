@Read Data
.global _start
_start:
	MOV R7, #3 @systcall read from keyboard
	MOV R0, #0 @input stream keyboard
	MOV R2, #10 @read 10 characters
	LDR R1, =message @put string in message
	SWI 0

_write:
	MOV R7, #4 @syscall to output to screen
	MOV R0, #1 @output to monitor
	MOV R2, #5 @ # of characters to write
	LDR R1, =message @ print string in message
	SWI 0

end:
	MOV R7, #1
	SWI 0

.data
message:
	.ascii " "
