#include <stdio.h>

int main(void)
{
    int n, i, fail, l, r, balls[10];

    scanf("%d", &n);

    while (n--)
    {
        fail = l = r = 0;

        for (i = 0; i < 10; i++) scanf("%d", &balls[i]);

        for (i = 0; i < 10 && !fail; i++)
        {
            if (balls[i] > l)
            {
                l = balls[i];
            }
            else if (balls[i] > r)
            {
                r = balls[i];
            }
            else
            {
                fail = 1;
            }
        }

        printf("%s\n", fail ? "NO" : "YES");
    }

    return 0;
}
