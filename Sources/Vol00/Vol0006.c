#include <stdio.h>

int main(void)
{
    char str[21];
    int l = 0, i;

    scanf("%s", str);

    while (str[l]) l++;

    for (i = l - 1; i >= 0; i--) printf("%c", str[i]);

    printf("\n");

    return 0;
}
