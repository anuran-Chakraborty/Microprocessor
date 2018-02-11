LXI H, 0204Fh
MOV B,M ;storing number of inputs
DCR B ;loop runs n-1 times because by nth time, the array is sorted
LABEL1: MOV D,B ;stores number of unsorted elements in loop
LXI H,02050h ;array starting position
LABEL2: MOV A,M ;A=M[HL]
INX H ;goes to next location
CMP M 
JNC LABEL3 ; if A < next element swapping is done
;swapping
MOV C,M ;C is the temporary variable, C=M[HL+1]
MOV M,A ;M[HL+1]=A=M[HL]
DCX H ;H now stores initial HL values
MOV M,C ;M[HL]=C=M[HL+1]
INX H ;H=HL+1
LABEL3: DCR D 
JNZ LABEL2
DCR B
JNZ LABEL1
HLT