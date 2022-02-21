/* Add two 32-bit numbers together */
/* Perfume R0 = R1 + R2 */

    .global _start 
_start:
    MOV R1,#50 @ Get 50 into R1
    MOV R2,#60 @ Get 6 into R2
    ADDS R0,R1,R2 @ Add the two Register, Result in R0

    MOV R7,#1
    SWI 0
