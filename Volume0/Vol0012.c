#include <stdio.h>

int main(void)
{
    double x1, y1, x2, y2, x3, y3, xp, yp, c1, c2, c3;

    while (scanf("%lf %lf %lf %lf %lf %lf %lf %lf", &x1, &y1, &x2, &y2, &x3, &y3, &xp, &yp) != EOF)
    {
        c1 = (x2 - x1) * (yp - y2) - (y2 - y1) * (xp - x2);
        c2 = (x3 - x2) * (yp - y3) - (y3 - y2) * (xp - x3);
        c3 = (x1 - x3) * (yp - y1) - (y1 - y3) * (xp - x1);

        if ((c1 > 0 && c2 > 0 && c3 > 0) || (c1 < 0 && c2 < 0 && c3 < 0))
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
