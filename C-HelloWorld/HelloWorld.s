@Hello World
.global _start
_start:
	MOV R7, #4 @syscall to output to screen
	MOV R0, #1 @monitor output stream
	MOV R2, #12 @string length
	LDR R1, =message @load resiger with address of string
	SWI 0

end:
	MOV R7, #1 @exit syscall
	SWI 0

.data @signify that what follows is data
message:
	.ascii "Hello World\n"
