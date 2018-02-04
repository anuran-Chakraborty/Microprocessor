lda 2200h
mov B,A
lda 2201h
mvi C,00h
add B
jnc L1
inr C
L1: sta 2202h
mov A,C
sta 2203h
hlt