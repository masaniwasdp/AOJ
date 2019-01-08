#include <stdio.h>

int main(void)
{
    int h, w, l;
    int rect = 0, dia = 0;

    while (scanf("%d,%d,%d", &h, &w, &l) != EOF)
    {
        if (h * h + w * w == l * l) rect++;

        if (h == w) dia++;
    }

    printf("%d\n%d\n", rect, dia);

    return 0;
}
