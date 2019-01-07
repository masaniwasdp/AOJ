#include <stdio.h>

int main(void)
{
    int x, y;

    while (scanf("%d %d", &x, &y) != EOF)
    {
        int t, m, n;

        if (x > y)
        {
            m = x;
            n = y;
        }
        else
        {
            m = y;
            n = x;
        }

        while (n != 0)
        {
            t = n;
            n = m % n;
            m = t;
        }

        printf("%d %d\n", m, x / m * y);
    }

    return 0;
}
