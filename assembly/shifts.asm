.data
prompt1: .asciiz "Introduza um numero: "
result:  .asciiz "\nO numero em hexadecimal é: "

.text
main:
	la $a0, prompt1
	li $v0, 4
	syscall

	li $v0, 5
	syscall
	move $t1, $v0

	la $a0, result
	li $v0, 4
	syscall

	# imprime "0x"
	li $a0, '0'
	li $v0, 11
	syscall

	li $a0, 'x'
	li $v0, 11
	syscall

	li $t0, 0       # n = 0
	li $t3, 0       # flag = 0 (ainda não imprimimos nada)

for:
	beq $t0, 8, endfor

	andi $t2, $t1, 0xF0000000
	srl  $t2, $t2, 28     # extrai o dígito

	# verificar se é diferente de zero ou se já imprimimos algo
	bne $t2, $zero, print
	bne $t3, $zero, print

	# não imprime
	sll $t1, $t1, 4
	addi $t0, $t0, 1
	j for

print:
	li $t3, 1               # flag = 1 (começámos a imprimir)

	# converter para ASCII
	li $t4, 10
	blt $t2, $t4, num_is_digit

	# letra A-F
	addi $t2, $t2, 55       # 'A' = 65 → 10 + 55 = 65
	j print_char

num_is_digit:
	addi $t2, $t2, 48       # '0' = 48

print_char:
	move $a0, $t2
	li $v0, 11              # syscall print_char
	syscall

	sll $t1, $t1, 4
	addi $t0, $t0, 1
	j for

endfor:
	bne $t3, $zero, exit    # se já imprimimos, sai

	# número era 0 — imprime "0"
	li $a0, '0'
	li $v0, 11
	syscall

exit:
	li $v0, 10
	syscall
