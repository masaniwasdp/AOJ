#include <stdio.h>

int main(void)
{
    int n, i, d, s, num[8];

    scanf("%d", &n);

    while (n--)
    {
        scanf("%d", &d);

        for (i = 0; i < 8; i++)
        {
            num[i] = d % 10;

            d /= 10;
        }

        for (i = 0; i < 8; i++)
        {
            for (d = 0; d < 7; d++)
            {
                if (num[d] > num[d + 1])
                {
                    s = num[d + 1];
                    num[d + 1] = num[d];
                    num[d] = s;
                }
            }
        }

        for (i = d = 0, s = 1; i < 8; i++)
        {
            d += (num[i] - num[7 - i]) * s;
            s *= 10;
        }

        printf("%d\n", d);
    }

    return 0;
}
