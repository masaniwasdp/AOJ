#include<stdio.h>

int main(void)
{
    int i, n, a, b, c, t;

    scanf("%d", &n);

    for (i = 0; i < n; i++)
    {
        scanf("%d %d %d", &a, &b, &c);

        t = c;

        if (a >= b && a >= c)
        {
            c = a;
            a = t;
        }
        else if (b >= a && b >= c)
        {
            c = b;
            b = t;
        }

        if (a * a + b * b == c * c)
        {
            printf("YES\n");
        }
        else
        {
            printf("NO\n");
        }
    }

    return 0;
}
