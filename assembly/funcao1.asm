	.data
prompt1: .asciiz "Escreve um número"
result: .asciiz "O fatorial é "
	
	.text
	
main:

	addi $sp, $sp, -4
    	sw   $ra, 0($sp)
    	
	#print_str(prompt1)
	la $a0, prompt1
	li $v0, 4 
	syscall
	
	li $v0 ,5
	syscall
	move $a0, $v0 #num = i
	
	jal factorial
	move $t1, $v0   #Salvar o resultado
	
	la $a0, result
	li $v0, 4
	syscall
	
	move $a0, $t1
	li $v0, 1
	syscall 
	
	#restaura a pilha
	lw   $ra, 0($sp)
    	addi $sp, $sp, 4
    	li   $v0, 10
    	syscall 
	
factorial:
	li $v0, 1 #res = 1;
	 	
	beq $a0, $0, endfor
	
	addi $sp, $sp, -8
	sw $a0, 4($sp) #guarda n
	sw $ra , 0($sp) #guarda o endereço
	
	addi $a0, $a0, -1
	
	jal factorial
	
	# Restaura n e $ra
   	 lw   $a0, 4($sp)
    	lw   $ra, 0($sp)
    	addi $sp, $sp, 8
	
	mul $v0, $v0, $a0 #res = res *i
endfor:	

	jr $ra
	