Harzards are completely solved.\
Implemented instructions are:

R-Type:

* **add** rd, rs1, rs2

* **sll** rd, rs1, rs2

* **srl** rd, rs1, rs2

* **xor** rd, rs1, rs2

* **or** rd, rs1, rs2

* **and** rd, rs1, rs2

  

I-Type:

* **addi** rd, rs1, imm

* **slli** rd, rs1, imm

* **srli** rd, rs1, imm

* **xori** rd, rs1, imm

* **ori** rd, rs1, imm

* **andi** rd, rs1, imm

  

S-Type:

* **sw** rs2, offset(rs1)

* **sb**  rs2, offset(rs1)

* **lb** rd, offset(rs1)

* **lh** rd, offset(rs1)

  

B-Type:

* **bne** rs1, rs2, offset

* **blt** rs1, rs2, offset

* **bge** rs1, rs2, offset

  

J-Type:

* **jal** rd, offset

* **jalr** rd, offset(rs1)

  

U-Type:

* **lui** rd, imm
