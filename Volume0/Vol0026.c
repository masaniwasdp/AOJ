#include <stdio.h>

int main(void)
{
    int x, y, s, d, p[10][10] = { 0 };

    while (scanf("%d,%d,%d", &x, &y, &s) != EOF)
    {
        switch (s)
        {
        case 3:
            if (x - 2 >= 0) p[x - 2][y]++;
            if (x + 2 <= 9) p[x + 2][y]++;
            if (y - 2 >= 0) p[x][y - 2]++;
            if (y + 2 <= 9) p[x][y + 2]++;

        case 2:
            if (x - 1 >= 0 && y - 1 >= 0) p[x - 1][y - 1]++;
            if (x - 1 >= 0 && y + 1 <= 9) p[x - 1][y + 1]++;
            if (x + 1 <= 9 && y - 1 >= 0) p[x + 1][y - 1]++;
            if (x + 1 <= 9 && y + 1 <= 9) p[x + 1][y + 1]++;

        case 1:
            if (x - 1 >= 0) p[x - 1][y]++;
            if (x + 1 <= 9) p[x + 1][y]++;
            if (y - 1 >= 0) p[x][y - 1]++;
            if (y + 1 <= 9) p[x][y + 1]++;

            p[x][y]++;
        }
    }

    s = d = 0;

    for (x = 0; x < 10; x++)
    {
        for (y = 0; y < 10; y++)
        {
            if (p[x][y] == 0)
            {
                s++;
            }
            else if (p[x][y] > d)
            {
                d = p[x][y];
            }
        }
    }

    printf("%d\n%d\n", s, d);

    return 0;
}
