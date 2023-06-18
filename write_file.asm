.balign 4

.global _main

_main:
        mov X16, #5
	adrp X0, filename@page
	add X0, X0, filename@pageoff
	mov X1, #513
	mov X2, #438
	svc 0
	
	mov X16, #4
	adrp X1, content@page
	add X1, X1, content@pageoff
	mov X2, #13
	svc 0
	
	mov X16, #1
	mov X0, #0
	svc 0

.data
content: .ascii "Hello World!\n"

filename: .ascii "hello_world.txt"

