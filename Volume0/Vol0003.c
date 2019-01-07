#include<stdio.h>

int main(void)
{
    int i, n, a, b, c, tmp;

    scanf("%d", &n);

    for (i = 0; i < n; i++)
    {
        scanf("%d %d %d", &a, &b, &c);

        tmp = c;

        if (a >= b && a >= c)
        {
            c = a;
            a = tmp;
        }
        else if (b >= a && b >= c)
        {
            c = b;
            b = tmp;
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
