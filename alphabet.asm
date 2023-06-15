.global _main

.balign 4

_main:
	mov X5, #26
	
loop:
	adrp X1, buffer@page
	add X1, X1, buffer@pageoff

	add X4, X5, #96
	str X4, [X1]
	mov X4, #10
	str X4, [X1,1]

	mov X16, #4
	mov X0, #1

	mov X2, #2
	svc 0
	
	subs X5, X5, #1
	b.ne loop

	mov X16, #1
	mov X0, 0
	svc 0
	
.data
buffer:
	.skip 1
