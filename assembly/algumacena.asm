#void main(void)


	.data
prompt1: .asciiz "Introduza um numero\n"
strpar: .asciiz  "O numero é par \n"
strimp: .asciiz 	"O numero é impar \n"

	.text
main:
	la $a0, prompt1
	li $v0, 4	#print_str( prompt1 );
	syscall
	

#int a;
#char prompt1[] = "Introduza um numero\n";
#char strpar[] = "O numero é par\n";
#char strimp[] = "O numero é impar\n";
#print_str( prompt1 );
	
	li $v0, 5 #print_str( strimp );
	syscall
	
	move $t0, $v0
	
if:	andi	$t1, $t0, 1 # if ((a & 1) == 0)
	beq	$t1, 1, else
	
	la $a0, strpar #print_str( strpar );
	li $v0, 4
	syscall
	
	j exit

else:
	la $a0, strimp	#print_str( strimp );
	li $v0, 4
	syscall


exit: 	#exit(); //system call 10
 	li $v0, 10	
 	syscall
		






