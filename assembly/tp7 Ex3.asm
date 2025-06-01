	.data
prompt1:	.asciiz "Introduza uma string\n"
result: 	.asciiz "O número de carateres numéricos: "
str: .space 40

	.text
	
main:
	la   	$a0, prompt1    # carrega o endereço de "prompt1"
    	li   	$v0, 4          # syscall para imprimir string
    	syscall
    	
	
    	la	$a0, str
    	li	$a1, 40	
    	li	$v0, 8		# read_string( str, 40 )
    	syscall
    	

	li	$t1, 0	# n = 0
	li	$t0, 0	# i = 0
	la	$t3, str
	
for:	addu	$t2, $t3, $t0	#t2 = &str[i]
	lb	$t4, 0($t2)	#t4 = copia de str[i]
	beq	$t4, $0,	endfor	# for (i = 0; str[i]!= '\0'; i++)
	
	if:
		blt	$t4, '0', endif
		bgt	$t4, '9', endif	#if ((str[i] >= '0' ) && (str[i] <= '9' ))
	
		addi $t1, $t1, 1	#n++
		
		j endif
	
endif:
	
	addi $t0 , $t0, 1 #i++
	j for

endfor:

# Finalizar o programa
    li   $v0, 10         # syscall para terminar o programa
    syscall



