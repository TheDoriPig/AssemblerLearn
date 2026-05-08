#include "stdio.h"
#include "windows.h" // Для поддержки русского языка в терминале

void print_bin(short n) {
    for (int i = 15; i >= 0; i--) {
        printf("%d", (n >> i) & 1);
        if (i % 4 == 0) printf(" ");
    }
}

int main()
{
    SetConsoleCP(65001);     
    SetConsoleOutputCP(65001); // Для поддержки русского языка в терминале

    short a = 6733;
    short b = -333;

    short c = a + b;

    printf("Операнд 6733: "); print_bin(a); printf("\n");
    printf("Операнд -333: "); print_bin(b); printf("\n");
    printf("Результат сложения 6400: "); print_bin(c);

    return 0;
}