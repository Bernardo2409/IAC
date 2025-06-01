	.data
prompt1: .asciiz "Introduza um numero\n"
result: 	.asciiz	"O fatorial do número "
result2: .asciiz " é: "	

	.text
main:
	la   	$a0, prompt1
	li 	$v0, 4
	syscall
	
	li	$v0, 5
	syscall
	
	move 	$a0 , $v0
	
	move	$t2, $a0
	
	jal factorial
	
	
	la	$a0, result
	li	$v0, 4
	syscall
	
	la 	$a0, ($t2)
	li	$v0, 1
	syscall
	
	la $a0, result2
	li $v0, 4
	syscall
	
	la	$a0, ($t0)
	li	$v0, 1
	syscall
	
	
	li	$v0, 10
	syscall
	
factorial:
	li	$t0, 1  	# res = 0 ;
	move	$t1, $a0 	# i = num;
	
for_fact:	ble	$t1, 0, endforfact
	
	mul	$t0, $t0, $t1
	
	subi	$t1, $t1, 1
	j for_fact



endforfact:
	move	$v0, $t0
	jr	$ra

	