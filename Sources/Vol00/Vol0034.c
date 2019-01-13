#include <stdio.h>

int main(void)
{
    int i, l[10], v1, v2, n;

    while (scanf("%d,", &l[0]) != EOF)
    {
        double p;

        n = l[0];

        for (i = 1; i < 10; i++)
        {
            scanf("%d,", &l[i]);

            n += l[i];
        }

        scanf("%d,%d", &v1, &v2);

        p = (double) n * v1 / (v1 + v2);

        for (i = n = 0; i < 10 && n < p; i++) n += l[i];

        printf("%d\n", i);
    }

    return 0;
}
