#include <stdio.h>

int main(void)
{
    int i, j, temp, n[5];

    for (i = 0; i < 5; i++) scanf("%d", &n[i]);

    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 4; j++)
        {
            if (n[j] < n[j + 1])
            {
                temp = n[j];
                n[j] = n[j + 1];
                n[j + 1] = temp;
            }
        }
    }

    printf("%d", n[0]);

    for (i = 1; i < 5; i++) printf(" %d", n[i]);

    printf("\n");

    return 0;
}
