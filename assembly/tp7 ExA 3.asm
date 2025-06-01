.data
str1:	.asciiz "Insira 1 numero: "
	.align 2
lista: 	.space 24 #6 palavras vezes 4 bytes

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


do:	
	li $t4, 0 # houveTroca to FALSE
	li $t5, 0 #int i = 0

for2:	bge $t5, 5, endfor2 # SIZE - 1 = 5
	
	sll $t6, $t5, 2
	addu $t6, $t2, $t6
	lw $t7, 0($t6)   
	lw $t8, 4($t6)   
	
if:	ble $t7, $t8, else # if lista[i] <= lista[i+1], skip

	sw $t8, 0($t6)
	sw $t7, 4($t6)
	li $t4, 1 # houveTroca = TRUE
	
else:
	addi $t5, $t5, 1 #i++
	j for2
	
endfor2:
	bne $t4, 0, do # if houveTroca, repeat
	
enddo:

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