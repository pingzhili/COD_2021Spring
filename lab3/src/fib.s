fib:
  	li a0, 12
    li a1, 1             # This is the first number, aka $a.
    li a2, 1             # This is the second number, aka $b.
    li a4, 2             # This is i   
    li a6, 2             # to check a0 with 
	li a7, 8
	sw a1, 0(x0)
	sw a2, 4(x0)

    blt a0, a6, cond1    # check if a0 <= 1
	beq a0, a6, end		   # if a0 == 2
    bgt a0, a6, loop     # if a0 > 2, proceed to loop

loop:                    # for i in range(2, n+1): $c = $a + $b; $a = $b; $b = $c; return $b
    add a3, a1, a2       
    mv a1, a2            
    mv a2, a3            
    addi a4, a4, 1
	sw a2, 0(a7) 
	addi a7, a7, 4
    blt a4, a0, loop
    bge a4, a0, end      # iterates n-1 times and goes to end

cond1:
    mv a0, a1            # if n==1 return the first number
    beq x0, x0, end

end: