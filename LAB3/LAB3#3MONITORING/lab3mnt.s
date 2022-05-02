/*how to use system call 4 to writing a string */
    .global _start
_start:
    BL _sum
    SWI 0
	
_sum:
	MOV R1,#50 @ Get 50 into R1
    MOV R2,#60 @ Get 6 into R2
    ADDS R0,R1,R2 @ Add the two Register, Result in R0
	MOV PC, LR   @ Return
_exit:
    MOV R7,#1       @ exit syscall
    SWI 0 
    .data
string: .ascii "hello world \n"
