int main(int argc, char *argv[])
{
    B *pb = (B*)malloc(sizeof(B) + 12*sizeof(A));
    printf("%p\n", pb);
    free(pb);
    
    return 0;
}

