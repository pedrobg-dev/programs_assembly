; prog1.asm
global _start 	; Linea requerida por ld 
section .text	; etiqueta que indica el inicio de la seccion ejecutable

_start:			; inicio del programa
	mov eax, 0x04	; eax = 0x04
	mov ebx, 0x06	; ebx = 0x06
	add eax, ebx 	; eax = eax + ebx
	mov eax, 1
	int 0x80
