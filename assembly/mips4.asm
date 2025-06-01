.text
main:
    li $t0, 0x12345678

    # sll rd, rt, shamt (shift left logical)
    sll $t1, $t0, 1      # $t1 = $t0 << 1
    move $a0, $t1
    li $v0, 1            # print_int
    syscall

    # nova linha
    li $a0, 10
    li $v0, 11
    syscall

    # srl rd, rt, shamt (shift right logical)
    srl $t2, $t0, 1      # $t2 = $t0 >>> 1
    move $a0, $t2
    li $v0, 1
    syscall

    li $a0, 10
    li $v0, 11
    syscall

    # sra rd, rt, shamt (shift right arithmetic)
    sra $t3, $t0, 1      # $t3 = $t0 >> 1
    move $a0, $t3
    li $v0, 1
    syscall

    # fim do programa
    li $v0, 10
    syscall

	
