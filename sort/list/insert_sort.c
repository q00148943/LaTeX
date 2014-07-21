void insert_sort(int array[], int size)
{
    int i = 0;
    int j = 0;
    int temp = 0;

    for (i = 1; i < size; ++i)
    {
        for (j = i; j > 0; --j)
        {
            if (array[j] < array[j-1])
            {
                temp = array[j];
                array[j] = array[j-1];
                array[j-1] = temp;
            }
            else
            {
                break;
            }
        }
    }

    return;
}
