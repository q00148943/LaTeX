class Base
{
  public:
    Base(){};
    virtual ~Base(){};
    virtual void fun1() {};
    virtual void fun2() {};
};

class D1: public Base
{
  public:
    D1(){};
    virtual ~D1(){};
    virtual void fun1() {};
};

class D2: public Base
{
  public:
    D2(){};
    virtual ~D2(){};
    virtual void fun2() {};
};

int main(int argc, char *argv[])
{
    D1 d1;
    D2 d2;

    return 0;
}

