#include <stdio.h>

int main(void)
{
    double a, b;

    while (scanf("%lf", &a) != EOF)
    {
        int i;

        for (b = a, i = 2; i <= 10; i++)
        {
            if (i % 2)
            {
                a += (b /= 3);
            }
            else
            {
                a += (b *= 2);
            }
        }

        printf("%lf\n", a);
    }

    return 0;
}
