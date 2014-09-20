#include <avr/io.h>

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


ROR R25
BRCC cont1
EOR R26,R18
cont1:
ROR R25
BRCC cont2
EOR R26,R19
cont2:
ROR R25
BRCC cont3
EOR R26,R20
cont3:
ROR R25
BRCC cont4
EOR R26,R21
cont4:
ROR R25
BRCC cont5
EOR R26,R22
cont5:
ROR R25
BRCC cont6
EOR R26,R23
cont6:
ROR R25
BRCC cont7
EOR R26,R24
cont7:
ret


