.balign 4

.global _main

_main:

loop:
	// read string from user
	mov X16, #3
	mov X0, #1
	adrp X1, buffer@page
	add X1, X1, buffer@pageoff
	mov X2, #8
	svc 0
	
	cmp X0, #1
	b.eq end // if X0 (the number of bytes read) is 1, we jump to end
	b loop // else keep looping

end:
	mov X16, #1
	mov X0, #0
	svc 0

.data

buffer: .skip 8
