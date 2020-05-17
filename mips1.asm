.data
	Ohayo: .asciiz "Ohayo, Sekai, Good morning, World éeeã!"
.text 
	li $v0, 4
	la $a0, Ohayo
	syscall 