#include "stdio.h"
#include "windows.h" // Для поддержки русского языка в терминале

int main()
{
    SetConsoleCP(65001);     
    SetConsoleOutputCP(65001); // Для поддержки русского языка в терминале

    unsigned short a = 0x5F34;
    unsigned short b = 0xFF01;

    unsigned short c = a + b;

    printf("Операнд 1 (0x%X) в десятичной: %u\n", a, a);
    printf("Операнд 2 (0x%X) в десятичной: %u\n", b, b);
    printf("Результат сложения в десятичной: %u\n", c);

    return 0;
}