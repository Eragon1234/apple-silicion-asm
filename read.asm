.balign 4

.global _main

_main:
	mov X16, #3
	mov X0, #0
	adrp X1, buffer@page
	add X1, X1, buffer@pageoff
	mov X2, #buffer_length
	svc 0

	mov X16, #4
	mov X0, #1
	adrp X1, buffer@page
	add X1, X1, buffer@pageoff
	mov X2, #buffer_length
	svc 0

	mov X16, #1
	mov X0, #0
	svc 0

.data

.equ buffer_length, 20

buffer:
	.skip buffer_length
