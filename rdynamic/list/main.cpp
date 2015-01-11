#include <stdio.h>
#include <stdlib.h>
#include <dlfcn.h>

#include "common.h"

typedef DataNode* (*PFGETNODE)();

DataNode::DataNode()
{
    strData = "Hello world!";
}

DataNode::~DataNode()
{
}

void DataNode::printData()
{
    printf("%s\n", strData.c_str());
    return;
}

int main(int argc, char *argv[])
{
    void *handle = dlopen("./libdatanode.so", RTLD_LAZY);
    if (NULL == handle)
    {
        fprintf(stderr, "%s\n", dlerror());
        return -1;
    }

    char *error = NULL;
    
    PFGETNODE pfFunc = (PFGETNODE)dlsym(handle, "_Z7getNodev");
    if ((error = dlerror()) != NULL)
    {
        fprintf(stderr, "%s\n", error);
        return -1;
    }

    DataNode *pNode = pfFunc();
    if (NULL == pNode)
    {
        printf("allocate data node failed.\n");
        return -1;
    }
    
    pNode->printData();
    delete pNode;
    
    if (dlclose(handle) < 0)
    {
        fprintf(stderr, "%s\n", dlerror());
        return -1;
    }
    
    return 0;
}

