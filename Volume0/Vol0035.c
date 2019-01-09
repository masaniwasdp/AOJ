#include <stdio.h>

int main(void)
{
    int i, j, k, l, m;
    double x[4], y[4], c[3];

    while (scanf("%lf", &x[0]) != EOF)
    {
        scanf(",%lf", &y[0]);

        for (i = 1; i < 4; i++) scanf(",%lf,%lf", &x[i], &y[i]);

        m = 1;

        for (i = 0; i < 4 && m; i++)
        {
            j = (i > 2 ? i - 3 : i + 1);
            k = (i > 1 ? i - 2 : i + 2);
            l = (i > 0 ? i - 1 : i + 3);

            c[0] = (x[j] - x[i]) * (y[l] - y[j]) - (y[j] - y[i]) * (x[l] - x[j]);
            c[1] = (x[k] - x[j]) * (y[l] - y[k]) - (y[k] - y[j]) * (x[l] - x[k]);
            c[2] = (x[i] - x[k]) * (y[l] - y[i]) - (y[i] - y[k]) * (x[l] - x[i]);

            if ((c[0] > 0 && c[1] > 0 && c[2] > 0) || (c[0] < 0 && c[1] < 0 && c[2] < 0))
            {
                m = 0;
            }
        }

        printf("%s\n", m ? "YES" : "NO");
    }

    return 0;
}
