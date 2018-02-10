lda 2050h
mov B,A
lda 2051h
mov D,A
mvi A,00h
mvi C,00h
loop:	add B
	jnc l1
	inr C
	l1:	dcr D
	jnz loop
sta 2053h
mov A,C
sta 2054h
hlt