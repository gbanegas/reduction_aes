#include <avr/io.h>
#include <stdint.h> 

.global reduction
.section .text

reduction:

ldi R18,0x1B
ldi R19,0x66
ldi R20,0x6C
ldi R21,0xD8
ldi R22,0xAB
ldi R23,0x4D
ldi R24,0x9A


ROR R26
BRCS B1
cont1:
ROR R26
BRCS B2
cont2:
ROR R26
BRCS B3
cont3:
ROR R26
BRCS B4
cont4:
ROR R26
BRCS B5
cont5:
ROR R26
BRCS B6
cont6:
ROR R26
BRCS B7
jmp done



B1:
EOR R25,R18
CLC
jmp cont1

B2:
EOR R25,R19
CLC
jmp cont2

B3:
EOR R25,R20
CLC
jmp cont3

B4:
EOR R25,R21
CLC
jmp cont4

B5:
EOR R25,R22
CLC
jmp cont5

B6:
EOR R25,R23
CLC
jmp cont6

B7:
EOR R25,R24
CLC

done:
ret
