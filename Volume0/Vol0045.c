#include <stdio.h>

int main(void)
{
    int sumPrice, sumNum, kind, price, num;

    sumPrice = sumNum = kind = 0;

    while (scanf("%d,%d", &price, &num) != EOF)
    {
        kind++;

        sumPrice += price * num;

        sumNum += num;
    }

    printf("%d\n%.0lf\n", sumPrice, (double) sumNum / kind + 0.05);

    return 0;
}
