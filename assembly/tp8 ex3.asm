	.data
str1: 	.asciiz "abc"
str2:	.asciiz "def"
result:	.space 40
	.text
main:
	la	$a0, result
	la	$a1, str1
	jal	strcopy

	la	$a0, result
	la	$a1, str2
	jal strcat
	
	la	$a0 , result
	li	$v0, 4
	syscall
	
	li	$v0, 10
	syscall
	
strcat:
	addiu	$sp, $sp, -8
	sw	$ra, 0 ($sp)
	sw	$s0, 4($sp)
	move $s0, $a0	#aux = dst	

strcat_wh:
	lb	$t0, 0($a0)
	beq	$t0, '\0', strcat_endw
	addiu	$a0, $a0, 1
	j	strcat_wh
strcat_endw:
	jal strcopy
	move 	$v0, $s0
	
	lw	$ra, 0 ($sp)
	lw	$s0, 4($sp)
	addiu	$sp, $sp, 8
	jr $ra
strcopy:
	
	li	$t0, 0	# i = 0;
strcopy_wh:	addu	$t1, $a1, $t0
	lb	$t2, 0($t1)
	beq	$t2, '\0', strcopy_endwh
	addu	$t3, $a0, $t0
	sb	$t2, 0($t3)
	addi	$t0, $t0, 1
	j	strcopy_wh
	
strcopy_endwh:
	addu	$t3, $a0, $t0
	sb	$0, 0($t3)
	move	$v0, $a0
	jr $ra
