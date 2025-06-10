	.data
prompt1: .asciiz "Introduza um numero\n"
result: .asciiz  "O fatorial do numero inserido é: "
	.text
	
main:  #void main(void)


	la $a0, prompt1
	li $v0, 4  #print_str( prompt1 );
	syscall
	
	li $v0, 5
	syscall
	move $t1, $v0  #n = read_int();
	
	li $t2, 1  #f=1;
	move $t0, $t1 #int i = n;
for: beq $t0, $0, endfor  #for ( i = n; i>0; i--)

	mul $t2, $t2, $t0 #f = f*i;
	
	

	addi $t0,$t0, -1
	
	j for
endfor:

	la $a0, result
	li $v0, 4 #print_str( result );
	syscall
	
	move $a0, $t2
	li $v0, 1 #print_int10( f );
	syscall 

exit:   #exit(); //system call 10
	li $v0, 10
	syscall