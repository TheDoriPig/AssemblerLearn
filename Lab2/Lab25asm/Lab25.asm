.386
.model flat, stdcall
option casemap :none

; Подключаем необходимые библиотеки MASM32
include \masm32\include\windows.inc
include \masm32\include\kernel32.inc
include \masm32\include\masm32.inc

includelib \masm32\lib\kernel32.lib
includelib \masm32\lib\masm32.lib

.data
    ; Операнды (в десятичном виде, ассемблер сам переведет в двоичный доп. код)
    num1    sdword 6733          ; sdword - 32-битное целое со знаком
    num2    sdword -333
    sum     sdword ?

    header  db "Res in 10 code:", 0
    buffer  db 16 dup(0)        ; Буфер для хранения строки с числом

.code
start:
    ; 1. Сложение чисел
    mov eax, num1               ; Загружаем первое число в регистр EAX
    add eax, num2               ; Складываем со вторым
    mov sum, eax                ; Сохраняем результат в память

    ; 2. Вывод заголовка
    invoke StdOut, addr header
    invoke StdOut, addr [buffer] ; Просто перевод строки (пустой буфер)
    
    ; 3. Преобразование результата из двоичного кода в строку (десятичную)
    ; dwtoa - функция MASM32 (Double Word To Ascii)
    invoke dwtoa, sum, addr buffer

    ; 4. Вывод результата в консоль
    invoke StdOut, addr buffer
	
	invoke Sleep, INFINITE

    ; Завершение программы
    invoke ExitProcess, 0
end start
