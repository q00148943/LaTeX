void selection_sort(int array[], int size)
{
	int i;
	int j;
	int idx;
	int temp;

	for (i = 0; i < size - 1; i++)
	{
		idx = i;

		for (j = i + 1; j < size; j++)
		{
			if (array[j] < array[idx])
			{
			    idx = j;
			}
		}

		if (i != idx)
		{
		    temp = array[i];
			array[i] = array[idx];
			array[idx] = temp;
		}
	}
}

