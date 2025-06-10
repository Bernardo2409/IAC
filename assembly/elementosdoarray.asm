	.data
prompt1: .asciiz "Introduza uma string\n"
result: .asciiz "O número de carateres numéricos: "
str: .space 40	
	.text

	la $a0, prompt1
	li $v0, 4 #print_str( prompt1 );
	syscall
	
	
	la $a0, str
	li $a1, 40
	li $v0, 8 #read_string( str, 40 );
	syscall
	
	li $t1, 0 #n=0;
	li $t0, 0 #i=0;
	
for: 	lb $t2, str($t0)
	beq $t2, $0, endfor  #for ( i = 0; str[i]!= ‘\0’; i++)
	
if:	li $t6 ,48
	li $t7, 57

	slt $t3, $t2, $t6	  #if ((str[i] >= '0' ) && (str[i] <= '9' )
	bne $t3, $0, endif
	
	slt $t4, $t7, $t2
	bne $t4, $0, endif
	
	addi $t1, $t1, 1 #n++;


endif:
	addi $t0, $t0, 1
	j for

endfor:

la $a0, result
li $v0, 4 #print_str( result );
syscall

move $a0, $t1
li $v0, 1 #print_int( n );
syscall

#exit
li $v0, 10
syscall
