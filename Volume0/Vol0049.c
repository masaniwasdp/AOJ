#include <stdio.h>

int main(void)
{
    int a, b, ab, o, d;
    char x[3];

    a = b = ab = o = 0;

    while (scanf("%d,%s", &d, x) != EOF)
    {
        if (x[0] == 'A' && x[1] == 'B')
        {
            ab++;
        }
        else if (x[0] == 'A')
        {
            a++;
        }
        else if (x[0] == 'B')
        {
            b++;
        }
        else
        {
            o++;
        }
    }

    printf("%d\n%d\n%d\n%d\n", a, b, ab, o);

    return 0;
}
