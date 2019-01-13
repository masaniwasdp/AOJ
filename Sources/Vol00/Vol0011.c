#include <stdio.h>

int main(void)
{
    int i, j, k, w, n, num[30], tmp;

    scanf("%d %d", &w, &n);

    for (i = 0; i < w; i++) num[i] = i + 1;

    for (i = 0; i < n; i++)
    {
        scanf("%d,%d", &j, &k);

        tmp = num[j - 1];
        num[j - 1] = num[k - 1];
        num[k - 1] = tmp;
    }

    for (i = 0; i < w; i++) printf("%d\n", num[i]);

    return 0;
}
