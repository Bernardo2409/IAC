.data

prompt1: .asciiz "Introduza um numero\n"   #char prompt1[] = "Introduza um numero\n";
.text

main: #void main(void)



	la $a0, prompt1 #print_str( prompt1 );
	li $v0, 4
	syscall
	
	li $v0, 5  #a = read_int();
	syscall
	move $t2 $v0 #int a = $t2
	
	
	li $t0, 0 #int i = 0;
	
for:     beq $t0, $t2, endfor  #for(i = 0; i < a; i++)
	
	la $a0, 45
	li $v0, 11
	syscall
	
	addi $t0, $t0, 1
	
	j for
endfor:


exit:	
	li $v0, 10
	syscall
#exit(); //system call 10

