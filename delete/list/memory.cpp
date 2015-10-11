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

void process(TMSG *msg, B* &pb)
{
    // caculate the num of elements of struct A in struct B
    int nelems = 12;
    
    pb = new char [sizeof(B) + nelems*sizeof(A)];

    // logic processing....
    
    return 0;
}

