.data 
msg: .asciiz "Hola Mundo\n" #Cadena terminada en null con salto de línea

.text
.globl main

main:
	#Imprimir mensaje
	li $v0, 4     #Código de syscall: imprimir cadena
	la $a0, msg   #Carga la dirección de msg en $a0
 	syscall       #Ejecutar
 	
 	#Salir del programa
 	li $v0, 10    #Código de syscall: salir
 	syscall       #Ejecutar