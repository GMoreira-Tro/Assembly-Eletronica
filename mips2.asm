#Guilherme dos Santos Moreira e Luiz Alfredo

.data
	b_input: .asciiz "Informe b:"
	c_input: .asciiz "Informe c:"
	e_input: .asciiz "Informe e:"
	f_input: .asciiz "informe f:"
	g_input: .asciiz "informe g:"
	resultado: .asciiz "\nResultado: "
	barraNN: .asciiz "\n\n"
	barraN: .asciiz "\n"
.text 

	li $v0, 4
	la $a0, b_input
	syscall 
	
	li $v0, 5
	syscall
	
	move $t0, $v0
	
	li $v0, 4
	la $a0, barraN
	syscall 
	
	li $v0, 1
	move $a0, $t0
	syscall
	 
	li $v0, 4
	la $a0, barraN
	syscall 

	li $v0, 4
	la $a0, c_input
	syscall
	
	li $v0, 5
	syscall
	
	move $t1, $v0
	
	li $v0, 4
	la $a0, barraN
	syscall 
	
	li $v0, 1
	move $a0, $t1
	syscall 
	
	li $v0, 4
	la $a0, barraN
	syscall 
	
	#adicionando b + c,além de já desalocar 'b'
	add $t0, $t0, $t1
	
	li $v0, 4
	la $a0, barraN
	syscall 
	
	li $v0, 1
	move $a0, $t0
	syscall 
	
	li $v0, 4
	la $a0, barraN
	syscall 
	
	li $v0, 4
	la $a0, e_input
	syscall
	
	li $v0, 5
	syscall
	
	#desalocamos 'c' para armazenar em 'e'
	move $t1, $v0
	
	li $v0, 4
	la $a0, barraN
	syscall 
	
	li $v0, 1
	move $a0, $t1
	syscall
	
	li $v0, 4
	la $a0, barraN
	syscall 
	
	li $v0, 4
	la $a0, f_input
	syscall
	
	li $v0, 5
	syscall
	
	move $t2, $v0
	
	li $v0, 4
	la $a0, barraN
	syscall 
	
	li $v0, 1
	move $a0, $t2
	syscall
	
	li $v0, 4
	la $a0, barraN
	syscall 
	
	li $v0, 4
	la $a0, g_input
	syscall
	
	li $v0, 5
	syscall
	
	move $t3, $v0
	
	li $v0, 4
	la $a0, barraN
	syscall 
	
	li $v0, 1
	move $a0, $t3
	syscall
	
	li $v0, 4
	la $a0, barraN
	syscall 
	
	#Somando 'a' e 'e' e alocando em $t0
	add $t0, $t0, $t1
	
	li $v0, 4
	la $a0, barraN
	syscall 
	
	li $v0, 1
	move $a0, $t0
	syscall
	
	li $v0, 4
	la $a0, barraN
	syscall 
	
	#Somando 'f' e 'g' e alocando em $t1
	add $t1, $t2, $t3
	
	li $v0, 4
	la $a0, barraN
	syscall 
	
	li $v0, 1
	move $a0, $t1
	syscall
	
	li $v0, 4
	la $a0, barraN
	syscall 
	
	#Soma final, alocando em $t2
	sub $t2, $t0, $t1
	
	#print final
	li $v0, 4
	la $a0, resultado
	syscall
	
	li $v0, 4
	la $a0, barraN
	syscall 
	
	li $v0, 1
	move $a0, $t2
	syscall 
	
	
