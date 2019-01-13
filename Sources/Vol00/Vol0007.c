#include <stdio.h>

int main(void)
{
    int n, m = 100000, i;

    scanf("%d", &n);

    for (i = 1; i <= n; i++) m = (int) ((m * 1.05 + 999) / 1000) * 1000;

    printf("%d\n", m);

    return 0;
}
