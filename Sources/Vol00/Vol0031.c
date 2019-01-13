#include <stdio.h>

int main(void)
{
    int w, i;
    int m[10] = { 1, 2, 4, 8, 16, 32, 64, 128, 256, 512 }, u[10];

    while (scanf("%d", &w) != EOF)
    {
        for (i = 0; i < 9; i++) u[i] = 0;

        for (i = 9; i >= 0; i--)
        {
            if (w >= m[i])
            {
                w -= m[i];

                u[i] = 1;
            }
        }

        for (i = 0, w = 0; i < 10; i++)
        {
            if (u[i])
            {
                if (!w)
                {
                    printf("%d", (w++, m[i]));
                }
                else
                {
                    printf(" %d", m[i]);
                }
            }
        }

        printf("\n");
    }

    return 0;
}
