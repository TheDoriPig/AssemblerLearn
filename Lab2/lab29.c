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

    data.i = 0x87356971;

    printf("HEX-код: %X\n", data.i);
    printf("Десятичное число: %e\n", data.f);

    return 0;
}