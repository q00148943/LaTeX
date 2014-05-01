#include <string>

class Base
{
  public:
    virtual void fun1() {}
    virtual void fun2() {}
    
  private:
   std::string m_strData1;
};

class D1: public Base
{
  public:
    D1(){ m_strData2 = "Hello, world."; }
    
    virtual void fun1() {}
    virtual void fun2() {}

  private:
    std::string m_strData2;
};

void mem_leak_test()
{
    Base *pObj = new D1;
    
    delete pObj;
    return;
}

int main(int argc, char *argv[])
{
    mem_leak_test();
    
    return 0;
}

