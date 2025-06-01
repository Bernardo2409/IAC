	.data
lista: 	.word 4, 3 , -2, 1, 27, 45  #static int lista[] = {4, 3 , -2, 1, 27, 45};
str1:	.asciiz "O conteudo de array é: \n"

	.text
	la	$a0, str1
	li	$v0, 4
	syscall	#print_str("O conteudo de array é: \n")
	
	la	$t2, lista
	li	$t0, 0	#i = 0
for:	bge	$t0, 6, endfor #for (i=0; i < 6; i ++)

	sll	$t1, $t0, 2	#t1 = i * 4
	add	$t1, $t2, $t1	#t1 = &lista[i} = lista + i * 4
	lw	$a0, 0($t1)	#a0 = copia de lista[i]
	li	$v0, 1
	syscall
		# print_str("    "):
	
	addi	$t0, $t0, 1	#i++
	j	for

endfor:
	li	$v0, 10
	syscall
