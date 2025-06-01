.data
prompt1: .asciiz "Introduza um numero: "
result:  .asciiz "\n O numero em hexadecimal e’: "
.text

main:
    # Imprimir a mensagem "Introduza um numero: "
    la   $a0, prompt1    # carrega o endereço de "prompt1"
    li   $v0, 4          # syscall para imprimir string
    syscall

    # Ler o número inteiro
    li   $v0, 5          # syscall para ler inteiro
    syscall
    move $t0, $v0        # armazena o número lido em $t0 (num)

    # Imprimir a mensagem "O numero em hexadecimal e’: "
    la   $a0, result     # carrega o endereço de "result"
    li   $v0, 4          # syscall para imprimir string
    syscall

    # Loop para imprimir os 8 dígitos hexadecimais
    li   $t1, 0          # n = 0 (contador)
    
for_loop:
    bge  $t1, 8, endfor  # se n >= 8, sai do loop

    # Extrair o dígito hexadecimal
    andi $t2, $t0, 0xF0000000  # $t2 = num & 0xF0000000
    srl  $t2, $t2, 28          # $t2 = (num & 0xF0000000) >> 28

    # Imprimir o dígito hexadecimal
    move $a0, $t2        # mover o dígito para o registrador $a0
    li   $v0, 1          # syscall para imprimir inteiro
    syscall

    # Deslocar o número para a esquerda para pegar o próximo dígito
    sll  $t0, $t0, 4     # num = num << 4 (desloca 4 bits à esquerda)

    # Incrementar o contador e repetir o loop
    addi $t1, $t1, 1     # incrementar n
    j for_loop           # voltar para o início do loop

endfor:
    # Finalizar o programa
    li   $v0, 10         # syscall para terminar o programa
    syscall
