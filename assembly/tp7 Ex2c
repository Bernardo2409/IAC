	.data
maius:	.asciiz "TEXTO EM MAIUSCULAS"
minus: 	.space 20

	.text
	
main:	li	$t0, 0	#int i=0
	la	$t1, maius	#t1 = enderaço inicial de maius = &maius[0]
while:	addu	$t2, $t1, $t0	#t2 = maius + i * 1 = &maius[i]
	lb	$t3, 0($t2)	#t3 = cópia de maius[i]
	beq	$t3, '\0', endwhile	#while (maius[i] != '\0' )
	
	if:	blt 	$t3, 'A' else
		bgt	$t3, 'Z' else
		addi	$t3, $t3, 32	#t3 = maius[i] + 'A' - 'a';
		
		j endif
		
	else:	
	
	addi $t3, $t3, 0
	
	endif:	

	la 	$t4, minus
	addu	$t5, $t4, $t0	# t5 = minus + i * 1 = &minus[i]
	sb	$t3, 0($t5)	# minus[i] = t3
	addi 	$t0, $t0, 1	#i++;
	
	j while
	
endwhile:

# Finalizar o programa
    li   $v0, 10         # syscall para terminar o programa
    syscall