.data
	Ohayo: .asciiz "Ohayo, Sekai, Good morning, World �ee�!"
.text 
	li $v0, 4
	la $a0, Ohayo
	syscall 