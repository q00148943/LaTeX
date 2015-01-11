#include <stdio.h>

#include "common.h"

DataNode* getNode()
{
    DataNode *pNode = new DataNode;
    if (NULL == pNode)
    {
        printf("new failed.\n");
        return NULL;
    }

    return pNode;
}

