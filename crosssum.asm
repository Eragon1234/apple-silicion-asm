.balign 4

.global _main

crosssum:
  // go to end if there is no more number
  cmp X0, #48 
  b.lt end

  // turn ascii number into value by subtracting 48
  sub X2, X0, #48
  add X1, X1, X2

  // shift one byte to the right, moving one char forward
  lsr X0, X0, #8

  // loop
  b crosssum
  
end:
  mov X0, X1

  ret

_main:
  // allocate 8 bytes on the stack and initialize them to zero
  mov X1, #0
  str X1, [sp, #-8]

  // read 8 bytes onto the stack
  mov X16, #3
  mov X0, #0
  mov X1, sp
  mov X2, #8
  svc 0

  // store the 8 bytes in X0
  ldr X0, [sp], #8
  
  // call atoi
  bl crosssum

  // exit
  mov X16, #1
  svc 0

