#include "stdio.h"
#include "windows.h" // Для поддержки русского языка в терминале

int main()
{
    SetConsoleCP(65001);     
    SetConsoleOutputCP(65001); // Для поддержки русского языка в терминале

    unsigned int a = 0xD18D;
    unsigned int b = 0x87;

    unsigned int c = a / b;
    unsigned int d = a % b;

    printf("Операнд %X: %u\n", a, a);
    printf("Операнд %X: %u\n", b, b);
    printf("Результат деления %X: %u\n", c, c);
    printf("Остаток %X: %u", d, d);
    return 0;
}