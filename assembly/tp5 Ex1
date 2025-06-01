.data
	
.text
main:	
	li	$t0, 4
	li	$t1, 1
	
	# Soma
	add	$t2, $t1, $t0
	move	$a0, $t2
	li	$v0, 1
	syscall
	
	# Subtração
	sub	$t3, $t1, $t0
	li	$v0, 11     #imprime o caracter
	li	$a0, 10     # '\n' em ASCII
	syscall
	
	move	$a0, $t3
	li	$v0, 1
	syscall

	# Multiplicação
	mul	$t4, $t1, $t0
	li	$v0, 11
	li	$a0, 10
	syscall

	move	$a0, $t4
	li	$v0, 1
	syscall

	# Exit
	li	$v0, 10
	syscall
