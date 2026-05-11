.386
.model flat, stdcall
option casemap:none

include C:\masm32\include\windows.inc
include C:\masm32\include\kernel32.inc
include C:\masm32\include\masm32.inc
include C:\masm32\include\user32.inc
includelib C:\masm32\lib\kernel32.lib
includelib C:\masm32\lib\masm32.lib
includelib C:\masm32\lib\user32.lib

.data
    WindowsTitle	db "Result", 0	; Заголовок окна
    res      		db "Nomer n : %d", 13, 10, "Sum: %d", 0 ; Вывод результата в окне
    buffer      	db 128 dup(0)
    threshold   	dd 12000

.code
start:
    xor eax, eax    ; EAX = x (счетчик)
    xor ebx, ebx    ; EBX = сумма

calc_loop:
    inc eax         
    
    ; Вычисляем y = 2x + 5
    mov ecx, eax    
    shl ecx, 1      
    add ecx, 5      
    
    add ebx, ecx    ; Прибавляем к общей сумме
    
    cmp ebx, threshold
    jle calc_loop 

    invoke wsprintf, addr buffer, addr res, eax, ebx

	invoke MessageBox, NULL, addr buffer, addr WindowsTitle, MB_OK + MB_ICONINFORMATION
	
    invoke ExitProcess, 0
end start