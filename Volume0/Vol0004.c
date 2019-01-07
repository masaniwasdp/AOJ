#include <stdio.h>

int main(void)
{
    double a, b, c, d, e, f;

    while (scanf("%lf %lf %lf %lf %lf %lf", &a, &b, &c, &d, &e, &f) != EOF)
    {
        double x = 1 / (a * e - b * d) * ((e * c) + (-b * f)) + 0.00005;
        double y = 1 / (a * e - b * d) * ((-d * c) + (a * f)) + 0.00005;

        printf("%.3lf %.3lf\n", x, y);
    }

    return 0;
}
