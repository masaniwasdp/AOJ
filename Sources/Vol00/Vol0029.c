#include <stdio.h>
#include <string.h>

int main(void)
{
    char str[33];
    char ls[1000][33] = { 0 };
    int len = 0, i, j;
    int num[1000] = { 0 };

    while (scanf("%s", str) != EOF)
    {
        if ('A' <= str[0] && str[0] <= 'Z') str[0] -= 'A';

        strcpy(ls[len++], str);
    }

    strcpy(str, ls[0]);

    for (i = 1; i <= len; i++)
    {
        if (strlen(str) < strlen(ls[i])) strcpy(str, ls[i]);

        for (j = i; j <= len; j++)
        {
            if (!strcmp(ls[i], ls[j])) num[i]++;
        }
    }

    for (i = 1, j = 0; i <= len; i++)
    {
        if (num[j] < num[i]) j = i;
    }

    printf("%s %s\n", ls[j], str);

    return 0;
}
