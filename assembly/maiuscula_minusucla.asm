	.data
minus: .asciiz "texto em minusculas"
maius: .space 20
	
	.text
	
main:	li $t0, 0 #i = 0;

while:	lb $t1, minus($t0)
	beq $t1, $0,  endwhile
	
	if: 
		li $t2, 'a'
    		blt $t1, $t2, copiar  # se t1 < 'a' vai para copiar

    		li $t3, 'z'
    		bgt $t1, $t3, copiar  # se t1 > 'z' vai para copiar
	
		addi $t1, $t1 , -32
		
	copiar:
	
	sb $t1, maius($t0)
	addi $t0, $t0, 1
	
	j while
endwhile:
	li $v0, 4
   	 la $a0, maius
    	syscall

    	# sair do programa
    	li $v0, 10
   	 syscall
	
	