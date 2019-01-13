#include <stdio.h>

int main(void)
{
    int num, i = 0, stack[10] = { 0 };

    while (scanf("%d", &num) != EOF)
    {
        if (!num)
        {
            printf("%d\n", stack[--i]);
        }
        else
        {
            stack[i++] = num;
        }
    }

    return 0;
}
