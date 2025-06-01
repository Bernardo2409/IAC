	.data
prompt1: .asciiz "abcdefg"
	.text
main:
	la   $a0, prompt1
	jal strlen
	
	#print_int10(n)
	move $a0, $v0
    	li   $v0, 1
    	syscall
	
	#exit()
	li	$v0, 10
	syscall	
	
	
strlen:
	# li	$t0, 0	#i = 0 (nao usei)
	li	$t1, 0	#n = 0
	
while:
	lb   $t2, 0($a0)
	beq 	$t2, $zero end_while 	#while ( str[i] != '\0' ) // 
	addi 	$a0, $a0, 1	#i++;
	addi	$t1, $t1, 1	#n++;
	
	j while

end_while:
	move	$v0, $t1
	jr	$ra
	