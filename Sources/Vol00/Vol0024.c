#include <stdio.h>

int main(void)
{
    double v;

    while (scanf("%lf", &v) != EOF)
    {
        printf("%d\n", (int) (v * v / 98.0) + 2);
    }

    return 0;
}
