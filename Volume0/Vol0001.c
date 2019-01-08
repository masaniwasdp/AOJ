#include <stdio.h>

int main(void)
{
    int i, j, k, x[10], temp;

    for (i = 0; i < 10; i++) scanf("%d", &x[i]);

    for (i = 0; i < 10; i++)
    {
        for (j = 9; j > i; j--)
        {
            if (x[j - 1] < x[j])
            {
                temp = x[j];
                x[j] = x[j - 1];
                x[j - 1] = temp;
            }
        }
    }

    for (i = 0, k = 0; i < 10; i++)
    {
        if (k >= 3) break;

        printf("%d\n", x[i]);

        k++;
    }

    return 0;
}
