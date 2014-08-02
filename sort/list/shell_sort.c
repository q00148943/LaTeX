void shell_sort(int array[], int size)
{
    int i = 0;
    int j = 0;
    int temp = 0;
    int step = 0;

    for (step = size/2; step > 0; step /= 2)
    {
        for (i = step; i < size; ++i)
        {
            for (j = i; j >= step; j -= step)
            {
                if (array[j] < array[j - step])
                {
					temp = array[j];
					array[j] = array[j - step];
					array[j - step] = temp;
                }
                else
                {
                    break;
                }
            }
        }
    }
}
