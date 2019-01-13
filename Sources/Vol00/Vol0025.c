#include <stdio.h>

int main(void)
{
    int i, j, hit, blow, a[4], b[4];

    while (scanf("%d", &a[0]) != EOF)
    {
        hit = blow = 0;

        for (i = 1; i < 4; i++) scanf("%d", &a[i]);
        for (i = 0; i < 4; i++) scanf("%d", &b[i]);

        for (i = 0; i < 4; i++)
        {
            for (j = 0; j < 4; j++)
            {
                if (a[i] == b[j])
                {
                    if (i == j)
                    {
                        hit++;
                    }
                    else
                    {
                        blow++;
                    }
                }
            }
        }

        printf("%d %d\n", hit, blow);
    }

    return 0;
}
