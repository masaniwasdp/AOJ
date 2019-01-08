#include <stdio.h>

int main(void)
{
    int d, n;

    while (scanf("%d", &n), n)
    {
        d = 0;

        while (n /= 5) d += n;

        printf("%d\n", d);
    }

    return 0;
}
