.balign 4

.global _main

_main:
	mov X16, #3
	mov X0, #0
	adrp X1, value@page
	add X1, X1, value@pageoff
	mov X2, #20
	svc 0

	mov X16, #4
	mov X0, #1
	adrp X1, value@page
	add X1, X1, value@pageoff
	mov X2, #5
	svc 0

	mov X16, #1
	mov X0, #0
	svc 0

.data
value:
	.skip 20

