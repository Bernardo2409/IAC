	.data
prompt1: 	.asciiz "Introduza dois numeros: \n"
prompt2:		.asciiz "A soma dos numeros e: \n"
	.text
main:	# dar print ao prompt1
	la	$a0, prompt1
	li	$v0, 4	# print_string
	syscall
	
	#ler o numero1 e armazenar em $t0
	li	$v0, 5	# read_int
	syscall
	move	$t0, $v0
	
	#ler o numero2 e armazenar em $t0
	li	$v0, 5
	syscall
	move	$t1, $v0
	
	#dar print ao promp2
	la	$a0, prompt2
	li	$v0, 4
	syscall
	
	#somar, armazenar esse valor para dar print
	add	$t2, $t1, $t0
	move 	$a0, $t2
	li	$v0, 1
	
	syscall
exit:

	li	$v0, 10
	syscall
	