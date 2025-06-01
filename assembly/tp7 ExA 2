.data
str1:	.asciiz "Insira 1 numero: "
	.align 2
lista: 	.space 24


	.text

	
	la $t2, lista
	li $t0, 0 #int i = 0
	
for:	bge $t0, 6, endfor
	
	sll $t1, $t0, 2 #t1 = i*4
	add $t1, $t2, $t1 # t1 = lista[i] = lista + i*4
	
	la $a0, str1
	li $v0, 4
	syscall
	
	li $v0, 5
	syscall
	
	sw $v0, 0($t1)
	
	
	addi $t0, $t0, 1 #i++
	j for
	
endfor:
	
	li $t3, 0 #int i = 0
for1:	bge $t3, 6, endfor1
	
	sll $t1, $t3, 2 #t1 = i*4
	add $t1, $t2, $t1 # t1 = lista[i] = lista + i*4
	lw $a0, 0($t1) #a0 = copia de lista[i]
	li $v0,1
	syscall
	
	addi $t3, $t3, 1 #i++
	j for1
	
endfor1:
	li $v0, 10
	syscall