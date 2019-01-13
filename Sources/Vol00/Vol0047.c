#include <stdio.h>

int main(void)
{
    int swp, cup[3] = { 1 };
    char a, b;

    while (scanf("%c,%c", &a, &b) != EOF)
    {
        swp = cup[a - 'A'];
        cup[a - 'A'] = cup[b - 'A'];
        cup[b - 'A'] = swp;
    }

    for (a = 0; a < 3; a++)
    {
        if (cup[a]) printf("%c\n", a + 'A');
    }

    return 0;
}
