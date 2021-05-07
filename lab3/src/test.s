li a1, 1  #load immediate number 100 into register a1
li a2, 2

test_sw:
	sw a1, 0(x0)
	sw a2, 4(x0)

test_lw:
	lw a3, 0(x0)
	lw a4, 4(x0)

test_add:
	add a3, a1, a2

test_addi:
	addi a4, a4, 1

test_beq:
	beq a4, a1, test_addi

test_jal:
	jal x1, exit

add1:
	addi a5, a5, 1  #This will not run if jal works

exit: