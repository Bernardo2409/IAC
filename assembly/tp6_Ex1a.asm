	.data
prompt: .asciiz "Introduza um numero\n"
strpar:	.asciiz "O numero é par\n"
strimp: .asciiz "O numero é ímpar\n"
	.text

main:	la	$a0, prompt
	li	$v0,4
	syscall
	
	li	$v0,5
	syscall
	move	$t0, $v0	 #t0 = a = read_int();
	
	andi	$t1, $t0, 1 #t1 = a & 1
	
if:	bne	$t1, $0, else # if ((a & 1) == 0) )                     salta para o else se $t1 ≠ 0
	la	$a0, strpar
	li	$v0, 4
	syscall	#	print_str(strpar)
	j endif

else:	la	$a0, strimp
	li	$v0, 4
	syscall	#	print_str(strimp):
endif:	
	li	$v0, 10
	syscall	#exit(): //system call 10
	
