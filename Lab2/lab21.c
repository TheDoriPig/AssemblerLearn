#include "stdio.h"
#include "windows.h" // Для поддержки русского языка в терминале

int main()
{
    SetConsoleCP(65001);     
    SetConsoleOutputCP(65001); // Для поддержки русского языка в терминале
    int a, b;
    printf("Введите два шестнадцатеричных числа для логического сложения: ");
    scanf("%x %x", &a, &b);
    for (int i = 14; i >= 0; i--) { // Вывод 8 бит
        printf("%d", (a >> i) & 1);
    }
    printf("\n");
    for (int i = 15; i >= 0; i--) { // Вывод 8 бит
        printf("%d", (b >> i) & 1);
    }
    printf("\n");
    int c = a + b;
    for (int i = 16; i >= 0; i--) { // Вывод 8 бит
        printf("%d", (c >> i) & 1);
    }
    return 0;
}