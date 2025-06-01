	.data
num : .word 0x12345678
str: .asciiz "Ola Mundo"
	
	.text
	la	$a0, str #coloca em $a0 o endereço str
	li	$v0, 4 #v0 = 4 corresponde a print_str()
	syscall
	
	
	
	addi	$t1, $0, 2   #t1 = $0 + 2
	li	$t2, 0x00000001  #t2 = 3
	add	$t0, $t1, $t2 #t0 = t1 + t2
	move	$a0, $t0
	li	$v0, 1
	syscall
	
	li $v0 , 10
	syscall
	
