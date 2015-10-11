#include <stdio.h>
#include <string>

using namespace std;

class A
{
public:
    A(){};
    ~A(){};
    
private:
    string m_strData;
};

int main(int argc, char *argv[])
{
    A *pa = new A [0x10];
    
    printf("%p\n", pa);
    delete [] pa;
    
    return 0;
}

