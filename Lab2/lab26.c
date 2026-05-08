#include "stdio.h"
#include "windows.h" // Для поддержки русского языка в терминале

int main()
{
    SetConsoleCP(65001);     
    SetConsoleOutputCP(65001); // Для поддержки русского языка в терминале

    unsigned char a = 0xDD;
    unsigned char b = 0x87;

    unsigned int c = a * b;

    printf("Операнд %X: %u\n", a, a);
    printf("Операнд %X: %u\n", b, b);
    printf("Результат умножения %X: %u", c, c);
    
    return 0;
}