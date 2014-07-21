void list_insert_sort(list_t *list_head)
{
    if ((NULL == list_head) || (NULL == *list_head))
    {
        return;
    }

    node_t *p = NULL;
    node_t *c = NULL;
    node_t *n = NULL;
    node_t *t = NULL;

    n = (*list_head)->next;
    (*list_head)->next = NULL;
    
    while (NULL != n)
    {
        p = c = *list_head;
        do
        {
            if (n->data < c->data)
            {
                t = n;
                n = n->next;
                
                if (p == c)
                {
                    t->next = c;
                    *list_head = t;
                }
                else
                {
                    t->next = c;
                    p->next = t;
                }
                
                break;
            }
            else
            {
                if (p == c)
                {
                    c = c->next;
                }
                else
                {
                    p = c;
                    c = c->next;
                }

                if (NULL == c)
                {
                    t = n;
                    n = n->next;
                    t->next = NULL;
                    p->next = t;
                    break;
                }
            }
        } while (1);
    }
    
    return;
}
