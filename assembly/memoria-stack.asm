# Programa MIPS com strlen modificado para armazenar n na memória
.data
    str: .asciiz "Hello, World!"  # String de exemplo terminada em nulo
    newline: .asciiz "\n"         # Nova linha para formatação
    length: .word 0              # Espaço na memória para armazenar n

.text
main:
    # Configura o argumento para strlen (endereço da string)
    la $a0, str         # Carrega o endereço da string em $a0

    # Chama a função strlen
    jal strlen          # Chama strlen, resultado estará em $v0

    # Salva o resultado de strlen
    move $t0, $v0       # Move o comprimento retornado para $t0

    # Imprime o resultado (comprimento da string)
    li $v0, 1           # Código da syscall para imprimir inteiro
    move $a0, $t0       # Move o comprimento para $a0
    syscall

    # Imprime uma nova linha
    li $v0, 4           # Código da syscall para imprimir string
    la $a0, newline     # Carrega o endereço da nova linha
    syscall

    # Encerra o programa
    li $v0, 10          # Código da syscall para sair
    syscall

# Função: strlen
# Entrada: $a0 - endereço da string
# Saída: $v0 - comprimento da string
# Modificação: Armazena n na memória (em length) a cada iteração
strlen:
    # Inicializa n = 0 ($t0) e i = 0 ($t1)
    li $t0, 0           # n = 0
    li $t1, 0           # i = 0
    la $t4, length      # Carrega o endereço da variável length

loop:
    # Carrega o caractere str[i] em $t2
    add $t3, $a0, $t1   # $t3 = endereço de str[i]
    lb $t2, 0($t3)      # $t2 = str[i]

    # Verifica se str[i] == '\0'
    beq $t2, $zero, end # Se str[i] == '\0', vai para o fim

    # Incrementa n
    addi $t0, $t0, 1    # n++

    # Armazena n na memória (em length)
    sw $t0, 0($t4)      # Armazena o valor de n no endereço de length

    # Incrementa i
    addi $t1, $t1, 1    # i++

    # Volta para o início do loop
    j loop

end:
    # Move o resultado (n) para $v0
    move $v0, $t0       # Move n para $v0

    # Retorna
    jr $ra