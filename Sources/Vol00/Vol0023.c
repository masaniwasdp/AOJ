#include <stdio.h>

int main(void)
{
    int n, i;

    scanf("%d", &n);

    while (n--)
    {
        double a[3], b[3], d;

        for (i = 0; i < 3; i++) scanf("%lf", &a[i]);
        for (i = 0; i < 3; i++) scanf("%lf", &b[i]);

        d = (a[0] - b[0]) * (a[0] - b[0]) + (a[1] - b[1]) * (a[1] - b[1]);

        if (d > (a[2] + b[2]) * (a[2] + b[2]))
        {
            printf("0\n");
        }
        else if (a[2] > b[2] && (a[2] - b[2]) * (a[2] - b[2]) > d)
        {
            printf("2\n");
        }
        else if (b[2] > a[2] && (b[2] - a[2]) * (b[2] - a[2]) > d)
        {
            printf("-2\n");
        }
        else
        {
            printf("1\n");
        }
    }

    return 0;
}
