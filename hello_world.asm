.global _main

.balign 4

_main:
	mov X16, #4
	mov X0, #1
	adr X1, helloworld
	mov X2, #12
	svc 0

	mov X16, #1
	mov X0, #0
	svc 0

helloworld: .ascii "Hello World\n"
