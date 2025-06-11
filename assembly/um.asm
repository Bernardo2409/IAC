	.data
	
msg: .asciiz "O numero de positivas é:"
notas: .word 17,8,12,10, 4
	.text
main:
	li $t1, 0 #num = 0
	li $t0, 0 #i = 0
	la $t2 notas #&notas[0}
	
for:	beq $t0 5, endfor
	lw $t9, 0($t2) #nota[i}

if:	li $t6, 10
	slt $t3, $t6, $t9
	li $t7, 20
	slt  $t4, $t9, $t7
	and $t5, $t3, $t4
	bne $t5, $0, endif
	
	addi $t1, $t1, 1
endif:

	addi $t0, $t0, 1
	addi $t2, $t2, 4
	j for
endfor:
	
	 la $a0, msg
	 li $v0, 4
	 syscall
	 
	 move $a0, $t1
	 li $v0, 1
	 syscall
	 
	 li $v0, 10
	 syscall
	 
	 

