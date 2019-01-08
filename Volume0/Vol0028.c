#include <stdio.h>

int main(void)
{
    int x, max = 0, ls[100] = { 0 };

    while (scanf("%d", &x) != EOF) ls[x]++;

    for (x = 0; x < 100; x++)
    {
        if (ls[x] > max) max = ls[x];
    }

    for (x = 0; x < 100; x++)
    {
        if (ls[x] == max) printf("%d\n", x);
    }

    return 0;
}
