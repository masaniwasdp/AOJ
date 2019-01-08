#include <stdio.h>

int main(void)
{
    int i, j, prm[1000000];

    for (i = 0; i < 1000000; i++) prm[i] = 1;

    for (i = 4; i < 1000000; i += 2) prm[i] = 0;

    prm[0] = prm[1] = 0;

    for (i = 3; i * i < 1000000; i += 2)
    {
        if (prm[i])
        {
            for (j = i + i; j < 1000000; j += i) prm[j] = 0;
        }
    }

    for (i = j = 0; i < 1000000; i++)
    {
        if (prm[i]) j++;

        prm[i] = j;
    }

    while (scanf("%d", &i) != EOF) printf("%d\n", prm[i]);

    return 0;
}
