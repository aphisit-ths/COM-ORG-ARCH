
.data
string: .asciz "aphisit"  @ .asciz adds a null-byte to the end of the string
after_string:
.set size_of_string, after_string - string

.text
.global _start

_start:
    mov r0 ,#0
    mov r1 ,#0
loop:
    CMP R1,#10
    bgt _exit
    mov r0, #1               @ STDOUT
    ldr r1, addr_of_string   @ memory address of string
    mov r2, #size_of_string  @ size of string
    mov r7, #4               @ write syscall
    swi #0                   @ invoke syscall
    ADD R1, R1, #1
    B loop

_exit:
    mov r7, #1               @ exit syscall
    swi 0                    @ invoke syscall

addr_of_string: .word string