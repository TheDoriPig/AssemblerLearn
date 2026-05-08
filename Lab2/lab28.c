#include "stdio.h"
#include "windows.h" // Для поддержки русского языка в терминале

int main()
{
    SetConsoleCP(65001);     
    SetConsoleOutputCP(65001); // Для поддержки русского языка в терминале

    union {
        float f;
        unsigned int i;
    } data;

    data.f = -4.769f;

    printf("Число: %.3f\n", data.f);
    printf("Шестнадцатеричная форма (IEEE 754): %X\n", data.i);
    
    printf("Знак: %u\n", (data.i >> 31) & 1);
    printf("Порядок (сдвинутый): %u\n", (data.i >> 23) & 0xFF);
    printf("Мантисса: %X\n", data.i & 0x7FFFFF);

    return 0;
}