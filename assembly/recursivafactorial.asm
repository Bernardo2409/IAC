.data
prompt:     .asciiz "Digite um número para calcular o fatorial: "
result:     .asciiz "\nO fatorial é: "
number:     .word 0
answer:     .word 0

.text
.globl main

main:
    # Imprimir prompt
    li $v0, 4
    la $a0, prompt
    syscall

    # Ler inteiro
    li $v0, 5
    syscall
    sw $v0, number

    # Chamar factorial
    lw $a0, number
    jal factorial
    sw $v0, answer

    # Imprimir resultado
    li $v0, 4
    la $a0, result
    syscall

    lw $a0, answer
    li $v0, 1
    syscall

    # Terminar
    li $v0, 10
    syscall

# Função factorial recursiva
factorial:
    addi $sp, $sp, -8
    sw $ra, 0($sp)
    sw $s0, 4($sp)

    li $v0, 1
    beq $a0, $zero, factorial_done

    move $s0, $a0
    addi $a0, $a0, -1
    jal factorial

    # $v0 = factorial(n-1)
    mul $v0, $s0, $v0

factorial_done:
    lw $ra, 0($sp)
    lw $s0, 4($sp)
    addi $sp, $sp, 8
    jr $ra
