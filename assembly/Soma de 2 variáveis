	.text
	#$a0 = a $a1 = b
	
main:	li	$a0, 2
	li	$a1, 3
		
	jal	sum
	#v0 contem o valor de sum(x,y)
	#...
	
	li	$v0, 10
	syscall
	
	#$a0 = a $a1 = b
sum:	add	$v0, $a0, $a1
	jr	$ra