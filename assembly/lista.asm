	.data
lista: .word 4, 3 , -2, 1, 27, 4 #static int lista[] = {4, 3 , -2, 1, 27, 45};
result: .asciiz "O conteudo do Array é: \n"
str: .asciiz " - "	
	.text

main:

	la $a0, result
	li $v0, 4 #print_str("O conteudo do Array é: \n");
	syscall
	
	li $t0, 0 #int i = 0;
	
	
for:
	beq $t0, 6, endfor #for (i=0; i < 6; i ++)
	
	
	sll $t2, $t0, 2
	lw $t1, lista($t2)
  	
  	move $a0, $t1
  	li $v0, 1 #print_int10(lista[i]);
  	syscall

	la $a0, str
	li $v0, 4 #print_str(" - ");
	syscall
	
	addi $t0, $t0, 1	
	
	j for
endfor:
	# exit
	li $v0, 10
	syscall
