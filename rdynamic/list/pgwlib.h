#ifndef PGWLIB_H
#define PGWLIB_H

#include <string>

// Include uscdbcommon.h for USCDB_MEMSET macro's definition
#include "uscdbcommon.h"

class DataNode
{
public:
    DataNode()
    {
        // Change memset to secure function USCDB_MEMSET
        USCDB_MEMSET(data, 256, 256, 0);
    }
    
    virtual ~DataNode();

private:
    char   data[256];
    string strData;
};

#endif /* PGWLIB_H */
