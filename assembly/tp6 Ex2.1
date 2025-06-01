.data
frase:  .asciiz "Introduza 5 numeros\n"
.text

main:
    # imprimir a frase
    la   $a0, frase
    li   $v0, 4
    syscall

    li   $t0, 0           # contador i = 0
    li   $t2, 0           # variável para somar os números positivos (soma = 0)

for:
    bge  $t0, 5, endfor   # se i >= 5, sair do ciclo

    # ler número
    li   $v0, 5           # syscall para ler inteiro
    syscall
    move $t1, $v0         # guardar o número lido em $t1

    # verificar se o número é positivo
    bgt  $t1, $zero, soma  # se $t1 > 0, soma o número

    addi $t0, $t0, 1      # incrementar o contador (i++)
    j for                 # continuar o ciclo

soma:
    add $t2, $t2, $t1     # soma o número positivo à soma total

    addi $t0, $t0, 1      # incrementar o contador (i++)
    j for                 # voltar ao início do ciclo

endfor:
    # imprimir a soma dos números positivos
    move $a0, $t2         # mover a soma para $a0 (argumento para print_int)
    li   $v0, 1           # syscall para imprimir inteiro
    syscall

    # terminar o programa
    li   $v0, 10          # syscall para terminar
    syscall


	
