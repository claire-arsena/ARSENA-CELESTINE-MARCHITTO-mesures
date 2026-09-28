void iqsort (int *a, int n)
{
    int i, j;
    if (n <= 1)
        return;

    for (i = 1, j = 0; i < n; i++)
        if (a[i] < a[0])
            swap(++j, i, a);

    swap(0, j, a);
    iqsort(a, j);
    iqsort(a + j + 1, n - j - 1);
}