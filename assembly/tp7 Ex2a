	.data
minus:	.asciiz "texto em minúsculas"
maius: 	.space 20

	.text
main:	li	$t0, 0	#int i=0
	la	$t1, minus	#t1 = enderaço inicial de minus = &minus[0]
while:	addu	$t2, $t1, $t0	#t2 = minus + i * 1 = &minus[i]
	lb	$t3, 0($t2)	#t3 = cópia de minus[i]
	beq	$t3, '\0', endwhile	#while (minus[i] != '\0' )
	
	if:	blt 	$t3, 'a' else
		bgt	$t3, 'z' else
		addi	$t3, $t3, -32	#t3 = minus[i] + 'A' - 'a';
		
		j endif
		
	else:	
	
	addi $t3, $t3, 0
	
	endif:	

	la 	$t4, maius
	addu	$t5, $t4, $t0	# t5 = maius + i * 1 = &maius[i]
	sb	$t3, 0($t5)	# maius[i] = t3
	addi 	$t0, $t0, 1	#i++;
	j while
	
endwhile:

# Finalizar o programa
    li   $v0, 10         # syscall para terminar o programa
    syscall

	