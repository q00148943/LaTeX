#ifndef COMMON_H
#define COMMON_H

#include <string>

using namespace std;

class DataNode
{
public:
    DataNode();
    virtual ~DataNode();

public:
    void printData();
    
private:
    string strData;    
};

#endif /* COMMON_H */

