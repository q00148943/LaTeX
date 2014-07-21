#ifndef __LIST_H__
#define __LIST_H__

typedef struct node_s  node_t;
typedef struct node_s *list_t;

struct node_s
{
    int     data;
    node_t *next;
};

#endif /* __LIST_H__ */
