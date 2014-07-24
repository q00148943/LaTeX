void bubble_sort(int array[], int size)
{
    int i = 0;
    int j = 0;
    int temp = 0;
    
    for (i = size - 1; i > 0 ; --i)
    {
        for (j = 0 ; j < i; ++j)
        {
            if (array[j + 1] < array[j])
            {
                temp = array[j];
                array[j] = array[j+1];
                array[j+1] = temp;
            }
        }
    }

    return;
}
