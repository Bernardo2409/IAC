
	.data
prompt:	.asciiz  "Introduza um numero\n"
	.text

# a = $t0  i = $t1	

main:	add	$t1, $0, $0	#$t1 = i
	la	$a0, prompt
	li	$v0, 4
	syscall
	
	li	$v0,5
	syscall
	move	$t0, $v0	 #t0 = a = read_int();
	
	for:	bge	$t1, $t0, endfor
		
		li	$a0, '_'
		li	$v0, 11
		syscall	#print_char('_');
		addi	$t1, $t1, 1	# i++
		j for
	endfor:
		li	$v0, 10
		syscall
		
	
