.text
.global _start



_start:
    MOV r3,#10  
    MOV r4,#1

    MOV r8,#24
    MOV r9,#10

    CMP r3 ,r4 @COMPArE r3 ,r4
    bne else   @ jump to else label
    ADD r0 , r8 ,r9
    MOV r7 ,#1
    SWI 1

else : 
    SUB r0 , r8 ,r9
    MOV r7 ,#1
    SWI 1