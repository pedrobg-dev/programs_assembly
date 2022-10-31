section .text
global _start
_start:
	;mov ecx,1	valo1
	;mov edx,2	valo2
	;cmp ecx,edx	;if ecx == edx
	mov eax,0xFACEb00C
	cmp eax,0xFACEB00C
	je iguales	;iguales ZF=1
	jmp distintos	;else distintos
salir:
	mov ebx,1
	mov eax,1
	int 0x80
distintos:
	mov edx,len_dis	;len a escribir
	mov ecx,msg_dis	;buffer
	mov ebx,1	;salida estandar
	mov eax,4	;llamada a imprimir
	int 0x80
	jmp salir
iguales:
	mov edx,len_equ	;cantidad a escribir
	mov ecx,msg_equ	; buffer
	mov ebx,1	;salida estandar
	mov eax,4	;num de llamada a imprimir
	int 0x80
	jmp salir
section .data
	msg_dis: db 'EAX no tiene 0xFACEBOOC :(',0xa
	len_dis: equ $ - msg_dis
	msg_equ: db 'EAX tiene 0xFACEBOOC :)',0xa
	len_equ: equ $ - msg_dis
