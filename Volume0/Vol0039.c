#include <stdio.h>

int main(void)
{
    char fig[101];

    while (scanf("%s", fig) != EOF)
    {
        int sum = 0, i;
        int nums[100] = { 0 };

        for (i = 0; fig[i]; i++)
        {
            switch (fig[i])
            {
            case 'I':
                nums[i] = 1;
                break;

            case 'V':
                nums[i] = 5;
                break;

            case 'X':
                nums[i] = 10;
                break;

            case 'L':
                nums[i] = 50;
                break;

            case 'C':
                nums[i] = 100;
                break;

            case 'D':
                nums[i] = 500;
                break;

            default:
                nums[i] = 1000;
            }
        }

        for (i = 0; nums[i]; i++)
        {
            if (nums[i] < nums[i + 1])
            {
                sum -= nums[i];
            }
            else
            {
                sum += nums[i];
            }
        }

        printf("%d\n", sum);
    }

    return 0;
}
