lda 0204Fh ;Take value of N
mov D,A ;Now D contains the value of N
lxi H,2050h ;Store starting memory location
mov B,M ;B stores the minimum 
mov C,M ;C stores the maximum
inx H ;Move onto next memory location
dcr D

loop:	mov A,M ;Take the current number
	cmp B ;Compare with minimum
	jnc l1 ;if A is not less than B
	mov B,A ;then B=A
	l1:	cmp C ;Compare with maximum
	jc l2 ;If carry is not present then check zero flag
	jz l2 
	mov C,A ;if A>B
	l2:	dcr D
	inx H
	jnz loop
mov A,B
sta 204Dh ;Minimum number
mov A,C
sta 204Eh ;Maximum number
hlt
