#include <stdio.h>
#include <stdlib.h>

static int cmp(void const *const lhs, void const *const rhs)
{
    return *((int *) rhs) - *((int *) lhs);
}

int main(void)
{
    int i, xs[10];

    for (i = 0; i < 10; i++) scanf("%d", &xs[i]);

    qsort(xs, (sizeof xs) / (sizeof *xs), sizeof *xs, cmp);

    for (i = 0; i < 3; i++) printf("%d\n", xs[i]);

    return 0;
}
