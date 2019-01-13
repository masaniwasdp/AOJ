#include <stdio.h>

int main(void)
{
    int d, i, s;

    while (scanf("%d", &d) != EOF)
    {
        for (i = 1, s = 0; i * d < 600; i++) s += i * i * d * d * d;

        printf("%d\n", s);
    }

    return 0;
}
