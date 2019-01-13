#include <stdio.h>
#include <string.h>

int main(void)
{
    char chp[80];

    while (fgets(chp, 80, stdin) != NULL)
    {
        while (strstr(chp, "the") == NULL
            && strstr(chp, "this") == NULL
            && strstr(chp, "that") == NULL)
        {
            int i;

            for (i = 0; i < 80; i++)
            {
                if (chp[i] > 96 && chp[i] < 123)
                {
                    if (++chp[i] > 122) chp[i] -= 26;
                }
            }
        }

        printf("%s", chp);
    }

    return 0;
}
