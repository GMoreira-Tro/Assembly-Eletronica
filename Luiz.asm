.data
	stringAltura:  	.asciiz "Digite a altura:\n"
	stringPeso:	.asciiz "Digite o peso:\n"
	stringIMC:	.asciiz "Seu IMC é:\n"

	string1:   	.asciiz "\nExtremamente abaixo do peso (-15)\n"
	string2:   	.asciiz "\nGravemente abaixo do peso (15-16)\n"
	string3:   	.asciiz "\nAbaixo do peso ideal (16-18.5)\n"
	string4:   	.asciiz "\nFaixa de peso ideal (18.5-25)\n"
	string5:   	.asciiz "\nSobrepeso (25-30)\n"
	string6:   	.asciiz "\nObesidade grau I (30-35)\n"
	string7:   	.asciiz "\nObesidade grau II (grave) (35-40)\n"
	string8:   	.asciiz "\nObesidade grau III (mórbida) (+40)\n"

	quinze: 	.float 15
	dezesseis: 	.float 16
	dezoitoCinco: 	.float 18.5
	vinteCinco: 	.float 25
	trinta: 	.float 30
	trintaCinco: 	.float 35
	quarenta: 	.float 40

.text
	main:
		# carrega floats
		lwc1 $f20 quinze
		lwc1 $f21 dezesseis
		lwc1 $f22 dezoitoCinco
		lwc1 $f23 vinteCinco
		lwc1 $f24 trinta
		lwc1 $f25 trintaCinco
		lwc1 $f26 quarenta
	
		# print_string Peso
		li $v0, 4
		la $a0, stringPeso
		syscall
	
		# read_float Peso
		li $v0, 6
		syscall
	
		mov.s $f1, $f0
		
		# print_string Altura
		li $v0, 4
		la $a0, stringAltura
		syscall
		
		# read_float Altura
		li $v0, 6
		syscall
		
		mov.s $f2, $f0
		
		# peso / (altura* altura)
		mul.s $f3, $f2, $f2
		div.s $f4, $f1, $f3
		
		# print_float IMC
		li $v0, 4
		la $a0, stringIMC
		syscall
	
		mov.s $f12, $f4
		
		li $v0, 2
		syscall
		
		# teste IMC
		c.lt.s $f12, $f26
		bc1t caso7
		
		# caso8
		li $v0, 4
		la $a0, string8
		syscall
		
		# end_of_program
		li $v0, 10
		syscall
	
	caso7:
		c.lt.s $f12, $f25
		bc1t caso6
	
		li $v0, 4
		la $a0, string7
		syscall
		
		# end_of_program
		li $v0, 10
		syscall
	caso6:
		c.lt.s $f12, $f24
		bc1t caso5
		
		li $v0, 4
		la $a0, string6
		syscall
		
		# end_of_program
		li $v0, 10
		syscall
	caso5:
		c.lt.s $f12, $f23
		bc1t caso4
		
		li $v0, 4
		la $a0, string5
		syscall
		
		# end_of_program
		li $v0, 10
		syscall
	
	caso4:
		c.lt.s $f12, $f22
		bc1t caso3
		
		li $v0, 4
		la $a0, string4
		syscall
		
		# end_of_program
		li $v0, 10
		syscall		
	
	caso3:
		c.lt.s $f12, $f21
		bc1t caso2
		
		li $v0, 4
		la $a0, string3
		syscall
		
		# end_of_program
		li $v0, 10
		syscall	
	
	caso2:
		c.lt.s $f12, $f20
		bc1t caso1
		
		li $v0, 4
		la $a0, string2
		syscall
		
		# end_of_program
		li $v0, 10
		syscall	
		
	caso1:
		li $v0, 4
		la $a0, string1
		syscall
		
		# end_of_program
		li $v0, 10
		syscall
	
	
	