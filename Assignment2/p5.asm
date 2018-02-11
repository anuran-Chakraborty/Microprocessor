MVI C,0FFh ;stores final position
LXI H,0204Dh
MOV M,C ;stores FFh in 204Dh
INR C
INX H
MOV D,M ; to store number to be searched
INX H ;goes to 204Fh
MOV B,M ;stores N
LABEL1: INX H ;goes to 2050h
INR C
MOV A,M
XRA D
JZ LABEL2
DCR B
JNZ LABEL1
LABEL2: LDA 0204Fh
XRA C
JZ LABEL3
MOV A,C
STA 0204Dh
LABEL3: HLT