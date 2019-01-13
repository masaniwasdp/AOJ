#include <stdio.h>

int main(void)
{
    int n;

    while (scanf("%d", &n) != EOF)
    {
        int a, b, c, d, i = 0;

        for (a = 0; a <= 9; a++)
        {
            for (b = 0; b <= 9; b++)
            {
                for (c = 0; c <= 9; c++)
                {
                    for (d = 0; d <= 9; d++)
                    {
                        if (n == a + b + c + d) i++;
                    }
                }
            }
        }

        printf("%d\n", i);
    }

    return 0;
}
