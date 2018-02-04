
lda 2200h
mov D,A
lxi H,2500h
mov A,M
mvi B,00h
mvi C,00h
l1: add B
    jnc l2
    inr C
    l2: mov B,A
    inx H
    mov A,M
    dcr D
    jnz l1
mov A,B
sta 2300h
mov A,C
sta 2301h
hlt
