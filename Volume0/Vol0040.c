#include <stdio.h>
#include <string.h>

int main(void)
{
    int n, i, len, a, b;

    scanf("%d ", &n);

    while (n--)
    {
        char chp[257], str[257];

        for (a = 0; a < 257; a++) str[a] = 0;

        fgets(chp, sizeof(chp), stdin);

        len = strlen(chp);

        for (a = 1; a < 26; a += 2)
        {
            for (b = 0; b < 26; b++)
            {
                if (strstr(str, "this") == NULL &&
                    strstr(str, "that") == NULL)
                {
                    for (i = 0; i < len; i++)
                    {
                        if (chp[i] >= 'a' && chp[i] <= 'z')
                        {
                            str[i] = ((a * (chp[i] - 'a') + b) % 26) + 'a';
                        }
                        else
                        {
                            str[i] = chp[i];
                        }
                    }
                }
            }
        }

        printf("%s", str);
    }

    return 0;
}
