	.text
	li $t0, 0x12345678 
	li $t1, 0x0000000F
	and $t2, $t1, $t0
	or $t3, $t1, $t0
	nor $t4, $t1, $t0
	xor $t5, $t1, $t0
	
	nor $t6, $0, $t0
	not $t6, $t0
	
	li $v0, 10
	syscall
