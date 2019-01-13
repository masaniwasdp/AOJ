#include <stdio.h>

int main(void)
{
    int a, b, n, s;

    while (scanf("%d %d %d", &a, &b, &n) != EOF)
    {
        s = 0;

        while (n--) s += (a = 10 * (a % b)) / b;

        printf("%d\n", s);
    }

    return 0;
}
