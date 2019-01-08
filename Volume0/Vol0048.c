#include <stdio.h>

int main(void)
{
    double w;

    while (scanf("%lf", &w) != EOF)
    {
        if (w <= 48.0)
        {
            printf("light fly\n");
        }
        else if (w <= 51.0)
        {
            printf("fly\n");
        }
        else if (w <= 54.0)
        {
            printf("bantam\n");
        }
        else if (w <= 57.0)
        {
            printf("feather\n");
        }
        else if (w <= 60.0)
        {
            printf("light\n");
        }
        else if (w <= 64.0)
        {
            printf("light welter\n");
        }
        else if (w <= 69.0)
        {
            printf("welter\n");
        }
        else if (w <= 75.0)
        {
            printf("light middle\n");
        }
        else if (w <= 81.0)
        {
            printf("middle\n");
        }
        else if (w <= 91.0)
        {
            printf("light heavy\n");
        }
        else
        {
            printf("heavy\n");
        }
    }

    return 0;
}
