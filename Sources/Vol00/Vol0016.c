#include <stdio.h>
#include <math.h>

int main(void)
{
    int len, rot, deg = 0;
    double rad, x = 0, y = 0;

    do
    {
        scanf("%d,%d", &len, &rot);

        rad = deg * 3.141592 / 180.0;

        x += len * sin(rad);
        y += len * cos(rad);

        deg += rot;
    }
    while (len != 0 || rot != 0);

    printf("%d\n%d\n", (int) x, (int) y);

    return 0;
}
