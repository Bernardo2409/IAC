.data
espaco: .asciiz " "

.text
main:
    li $t1, 0x1234ABCD     # valor a processar
    li $t0, 7              # contador de dígitos (de 7 até 0)

loop:
    li $t3, 0xF            # máscara: 4 bits = 0xF
    sll $t4, $t3, $t0      # $t4 = 0xF << (4 * $t0)
    sll $t4, $t4, 2        # porque $t0 é em "dígitos", 4 bits → ×4 (sll $t4, $t4, 2)

    and $t5, $t1, $t4      # aplica máscara
    srl $t5, $t5, $t0      # desloca bits para a direita (×4)

    srl $t5, $t5, 2        # compensa o sll anterior (×4 = << 2)

    move $a0, $t5
    li $v0, 34             # syscall: print_hex
    syscall

    la $a0, espaco
    li $v0, 4              # print espaço
    syscall

    addi $t0, $t0, -1      # próximo dígito
    bgez $t0, loop         # continua se t0 >= 0

    li $v0, 10
    syscall
