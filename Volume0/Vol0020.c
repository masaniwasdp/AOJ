#include <stdio.h>

int main(void)
{
    char s;

    while (scanf("%c", &s) != EOF)
    {
        if ('a' <= s && s <= 'z') s -= 32;

        printf("%c", s);
    }

    return 0;
}
