#include <stdio.h>

int main(void)
{
    char str[1000];
    int i = 0;

    fgets(str, sizeof(str), stdin);

    while (str[i] && i < 996)
    {
        if (str[i] == 'a' && str[i + 1] == 'p' && str[i + 2] == 'p' && str[i + 3] == 'l' && str[i + 4] == 'e')
        {
            str[i + 0] = 'p';
            str[i + 1] = 'e';
            str[i + 2] = 'a';
            str[i + 3] = 'c';
            str[i + 4] = 'h';

            i += 5;
        }
        else if (str[i] == 'p' && str[i + 1] == 'e' && str[i + 2] == 'a' && str[i + 3] == 'c' && str[i + 4] == 'h')
        {
            str[i + 0] = 'a';
            str[i + 1] = 'p';
            str[i + 2] = 'p';
            str[i + 3] = 'l';
            str[i + 4] = 'e';

            i += 5;
        }
        else
        {
            i++;
        }
    }

    printf("%s", str);

    return 0;
}
