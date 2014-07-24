/* with the bubble sort, after each iteration, the last  element is on the right place */
void list_bubble_sort(list_t *list_head)
{
    if ((NULL == list_head) || (NULL == *list_head))
    {
        return;
    }

    node_t *c = NULL;
    node_t *p = NULL;
    node_t *n = NULL;
    node_t *e = NULL;
    
    while (e != (*list_head)->next)
    {
        p = c = *list_head;
        n = c ->next;
        while (e != n) 
        {
            if (n->data < c->data)
            {
                if (p == c)
                {
                    c->next = n->next;
                    n->next = c;
                    *list_head = n;
                    p = n;
                    n = c->next;
                }
                else
                {
                    p->next = n;
                    c->next = n->next;
                    n->next = c;
                    p = n;
                    n = c->next;
                }
            }
            else
            {
                if (p == c)
                {
                    c = n;
                    n = c->next;
                }
                else
                {
                    p = c;
                    c = n;
                    n = c->next;
                }
            }
        }

        e = c;
    }

    return;
}

