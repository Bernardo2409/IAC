	.data
prompt:	.asciiz  "Introduza um numero\n"
result:	.asciiz	"O fatorial do número inserido é: "
	.text


# $t0 = i	$t1 = n	     $t2 = f
main:	
	la	$a0, prompt
	li	$v0, 4
	syscall
	
	li	$v0,5
	syscall
	move	$t1, $v0	 #$t1 = n = read_int();
	move 	$t0 , $t1 # t0 = i = n
	li	$t2, 1	#$t2 = f = 1;
	
	for:	bge $0, $t0, endfor
		mul	$t2, $t2, $t0 # f = f * i
		addi 	$t0, $t0, -1 # i--
		
		j for
	endfor:
		la	$a0, result
		li	$v0, 4
		syscall
		
		move	$a0, $t2	
		li	$v0, 1
		syscall
	exit:
		li	$v0, 10
		syscall
