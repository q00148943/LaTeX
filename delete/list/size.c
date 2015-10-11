//
//  size.c
//
//  Created by q00148943 on 18/08/15.
//  Copyright (c) 2015 q00148943. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include <malloc.h>

int main(int argc, char *argv[])
{
    void   *p = malloc(atoi(argv[1]));
    size_t *size = (char*)p - 4;
    
    printf("address = %p size = %d malloc_usable_size = %d\n",
           size,
           (*size)&(~7),        /* 8 bytes aligned */
           malloc_usable_size(p));
    
    free(p);

    return 0;
}

