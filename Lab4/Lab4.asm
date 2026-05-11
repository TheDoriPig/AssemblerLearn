.386
.model flat, stdcall
option casemap:none

include C:\masm32\include\kernel32.inc
includelib C:masm32\lib\kernel32.lib


.data
	a	db 5Fh
	b	dw 0AB54h
	m	dd 0ADFFFh, 34h, 0DFh, 45h, 67h
	s	db "Planeta", 0

.code
start:

	movzx ecx, a	; Дослали a в ECX
	movzx ebx, b	; Дослали b в EBX
	
	push word ptr a	; Положили a в стек
	push word ptr b	; Положили b в стек
	
	pop ax			; Достали b из стека в регистр
	mov a, al		; Записали в a
	
	pop ax			; Достали a из стека в регистр
	mov b, ax		; Записали в b
	
	invoke ExitProcess, 0
end start