#include <stdio.h>
#include <string.h>
#include <stdlib.h>

static int makeBigInt(char *, char const *);
static int sumBigInt(char *, char const *, char const *);

int main(void)
{
    int i, n, err;

    scanf("%d", &n);

    while (n--)
    {
        char buf[1024], a[81], b[81];

        err = 0;

        scanf(" %s", buf);

        err += makeBigInt(a, buf);

        scanf(" %s", buf);

        err += makeBigInt(b, buf);

        err += sumBigInt(buf, a, b);

        if (err < 0)
        {
            printf("overflow\n");

            continue;
        }
         
        for (i = 0; i < 79; i++)
        {
            if (buf[i] != '0') break;
        }

        printf("%s\n", buf + i);
    }

    return 0;
}

static int makeBigInt(char *s, char const *t)
{
    int l, i;

    l = 80 - strlen(t);

    if (l < 0) return -1;
         
    for (i = 0; i < l; i++) s[i] = '0';

    strcpy(s + l, t);

    return 0;
}

static int sumBigInt(char *sum, char const *a, char const *b)
{
    int i, n, m = 0;

    for (i = 79; i >= 0; i--)
    {
        n = (a[i] - '0') + (b[i] - '0') + m;
        m = n / 10;

        sum[i] = (n % 10) + '0';
    }

    sum[80] = '\0';

    return m ? -1 : 0;
}
