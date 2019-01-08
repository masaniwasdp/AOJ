#include <stdio.h>

int main(void)
{
    int n;
    long m = 1;

    scanf("%d", &n);

    while (n > 0) m *= n--;

    printf("%ld\n", m);

    return 0;
}
