	.data	
nums:	-2, 3, 6, 4, 8, 126, -131, 17
char:	.asciiz ","

	.text
	
main:	
	li $t0, 0 #int i=0;
	la $s1, nums
	
for: 	beq $t0, 8, endfor # se i = 8, salta o for
	
	sll $t1, $t0, 2
	add $t2, $s1, $t1
	
	lw $t3, 0($t2) #val = nums[i];
	
if:	andi $t4, $t3, 1	#val % 2		
	bne  $t4, $0, endif	# (val % 2) == 0
	
	move $a0, $t3
	li $v0, 1
	syscall
	
	li $a0, ','
	li $v0, 11
	syscall
	
endif: 	
	addi $t0, $t0, 1
	j for	
endfor:

	li $v0, 10
	syscall			
									
		