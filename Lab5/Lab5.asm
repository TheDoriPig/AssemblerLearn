.386
.model flat, stdcall
option casemap:none

include C:\masm32\include\windows.inc
include C:\masm32\include\kernel32.inc
include C:\masm32\include\msvcrt.inc
includelib C:masm32\lib\kernel32.lib
includelib C:\masm32\lib\msvcrt.lib


.data
	msgA	db "Print a: ", 0
	msgB	db "Print b: ", 0
	msgD	db "Print d: ", 0
	fmtIn	db "%d", 0
	fmtOut	db "Sum y = %d", 10, 0

.data?
	a	dd ?
	b	dd ?
	d	dd ?
	y	dd ?
	
.code
start:
	invoke crt_printf, addr msgA
	invoke crt_scanf, addr fmtIn, addr a
	
	invoke crt_printf, addr msgB
	invoke crt_scanf, addr fmtIn, addr b
	
	invoke crt_printf, addr msgD
	invoke crt_scanf, addr fmtIn, addr d
	
	mov eax, a
	add eax, b	; a + b
	cdq
	idiv d		; (a + b) / d
	mov ecx, eax	; В ecx хранится ((a + b) / d)
	
	mov eax, d
	imul eax, d	; d * d
	imul eax, a	; (d * d) * a
	
	sub ecx, eax	; Вычитаем, теперь ecx = ((a + b) / d) - ((d * d) * a)
	sub ecx, b	; ecx - b
	mov y, ecx	; Сохраняем результат в y
	
	invoke crt_printf, addr fmtOut, y
	
	invoke Sleep, INFINITE
	
	invoke ExitProcess, NULL
end start