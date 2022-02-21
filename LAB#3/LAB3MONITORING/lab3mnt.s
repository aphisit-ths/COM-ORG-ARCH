/*how to use system call 4 to writing a string */

    .global _start
_start:
    MOV R7,#4       @Syscall number   
    MOV R0,#1       @Stdout is monitor
    MOV R2,#19     @str is 19 char long
    LDR R1, =string @ string located at string:
    SWI 0
_exit:
    MOV R7,#1       @ exit syscall
    SWI 0 

    .data
string: .ascii "63015208 Aphisit \n"
