#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct TLV
{
    int  tag;
    int  length;
    char value[]; /* equals to char value[0] */
}TLV;

int main(int argc, char *argv[])
{
    TLV *tlv1 = malloc(sizeof(struct TLV) + 0x10);

    tlv1->tag    = 0x0A;
    tlv1->length = 0x10;
    
    strcpy(tlv1->value, "0123456789ABCDEF");
    
    printf("%c %c %c ...\n", tlv1->value[13], tlv1->value[14], tlv1->value[15]);


    TLV *tlv2 = malloc(sizeof(struct TLV) + 10);
    
    tlv2->tag    = 0x0A;
    tlv2->length = 10;
    
    strcpy(tlv2->value, "0123456789");
    
    printf("%c %c %c ...\n", tlv2->value[0], tlv2->value[1], tlv2->value[2]);

    free(tlv1);
    free(tlv2);
    return 0;
}

