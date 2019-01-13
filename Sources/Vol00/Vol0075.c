#include <stdio.h>

int main(void)
{
    int num;
    double m, l;

    while (scanf("%d,%lf,%lf", &num, &m, &l) != EOF)
    {
        if (25 <= (m / (l * l))) printf("%d\n", num);
    }

    return 0;
}
