#include <cstdio>
#include <cstdlib>

int main()
{
    int *intarray;
    intarray = (int *)malloc(1000 * sizeof(int));
    free(intarray);
}