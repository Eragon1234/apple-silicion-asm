.global _main

.balign 4

_main:
	mov X5, #9
	
loop:
	adrp X1, value@page
	add X1, X1, value@pageoff

	add X4, X5, #48
	str X4, [X1]
	mov X4, #10
	str X4, [X1,1]

	mov X16, #4
	mov X0, #1

	mov X2, #2
	svc 0
	
	subs X5, X5, #1
	b.ne loop

exit:
	mov X16, #1
	mov X0, 0
	svc 0
	
.data

value:
	.skip 2
