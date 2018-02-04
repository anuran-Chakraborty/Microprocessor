lda 2500h
mov B,A
ani 00fh
mov C,A
mov A,B
ani 0f0h
rlc
rlc
rlc
rlc
add C
sta 2550h
hlt