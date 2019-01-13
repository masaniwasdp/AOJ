#include <stdio.h>

int main(void)
{
    double h, max, min;

    scanf("%lf", &max);

    min = max;

    while (scanf("%lf", &h) != EOF)
    {
        if (h > max)
        {
            max = h;
        }
        else if (h < min)
        {
            min = h;
        }
    }

    printf("%.1lf\n", max - min);

    return 0;
}
