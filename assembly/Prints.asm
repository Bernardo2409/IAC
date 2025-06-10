	.data
str: 	.asciiz "Introduza dois números : "
result: .asciiz "A soma dos números é:"
	.text
	# print_string( “Introduza dois números :” );
	la $a0 str
	li $v0, 4
	syscall
	
	# a = read_int();
	li $v0, 5
	syscall
	move $t0, $v0
	
	#b = read_int();
	li $v0, 5
	syscall
	move $t1, $v0
	
	# print_string( “A soma dos números e’: ” );
	la $a1 result
	li $v0, 4
	syscall
	
	# print_int10( a + b )

	add $t2, $t1, $t0
	move $a0, $t2
	li $v0, 1
	syscall
	

	
	
	
	
