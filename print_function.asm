.balign 4

.global _main

print_value:
	mov X16, #4
	mov X0, #1
	adrp X1, value@page
	add X1, X1, value@pageoff
	mov X2, #2
	svc 0

	ret

_main:
	bl print_value

	bl print_value

	mov X16, #1
	mov X0, #0
	svc 0

.data
value:
	.ascii "a\n"

