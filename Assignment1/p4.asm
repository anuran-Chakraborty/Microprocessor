lda 2500h
mvi B,08h
mvi C,00h
loop:	rlc
	jnc l1
	inr c
	l1:	dcr B
	jnz loop
mov A,C
sta 2610h
mvi A,08h
sub C
sta 2611h
hlt