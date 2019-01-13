#include <stdio.h>

int main(void)
{
    int i, j, sum, prm[1000000], ls[78498];

    for (i = 0; i < 1000000; i++) prm[i] = 1;

    for (i = 4; i < 1000000; i += 2) prm[i] = 0;

    prm[0] = prm[1] = 0;

    for (i = 3; i * i < 1000000; i += 2)
    {
        if (prm[i])
        {
            for (j = i * 2; j < 1000000; j += i) prm[j] = 0;
        }
    }

    ls[0] = 2;

    for (i = 3, j = 1; i < 1000000; i += 2)
    {
        if (prm[i]) ls[j++] = i;
    }

    while (scanf("%d", &i), i)
    {
        j = sum = 0;

        while (j < i) sum += ls[j++];

        printf("%d\n", sum);
    }

    return 0;
}
