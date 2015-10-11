#include <stdio.h>

struct A
{
    int  a;
    int  b;
    char desc[128];
};

struct B
{
    int result;
    int info_num;
    A   info[];
};

int main(int argc, char *argv[])
{
    B *pb = (B*)new char [sizeof(B) + 12*sizeof(A)];
    printf("%p\n", pb);
    delete [] pb;
    
    return 0;
}

