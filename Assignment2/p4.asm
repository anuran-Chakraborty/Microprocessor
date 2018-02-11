LXI H,0204Fh
MOV B,M ;stores number of inputs
MVI C,000h;stores number of even numbers
LXI D,02100h; stores address to store even numbers
LABEL1: INX H
MOV A,M
ANI 001h ;stores 1 in A if odd, otherwise 0
JNZ LABEL2 ;if odd jump to label 2
INR C
MOV A,M ;storing number in A once again because A holds 0 or 1 value
STAX D ;storing the even number in memory
INX D
LABEL2: DCR B
JNZ LABEL1
LDA 0204Fh ;A stores number of inputs
SUB C ; A now stores number of odd numbers
STA 02301h
MOV A,C; A now stores number of even numbers
STA 02300h
;doing the same for even numbers now
LXI H,0204Fh
MOV B,M
LXI D,02200h
LABEL3: INX H
MOV A,M
ANI 001h
JZ LABEL4
MOV A,M ;storing number in A once again because A holds 0 or 1 value
STAX D
INX D
LABEL4: DCR B
JNZ LABEL3
HLT