/*
 *         call graph
 * void *__libc_free (void *mem)
 *            ||
 *            \/
 * void *_int_free (mstate av, mchunkptr p, int have_lock)
 */

struct malloc_chunk {

    INTERNAL_SIZE_T prev_size;  /* Size of previous chunk (if free).  */
    INTERNAL_SIZE_T size;       /* Size in bytes, including overhead. */

    struct malloc_chunk* fd;   /* double links -- used only if free. */
    struct malloc_chunk* bk;

    /* Only used for large blocks: pointer to next larger size.  */
    struct malloc_chunk* fd_nextsize; /* double links -- used only if free. */
    struct malloc_chunk* bk_nextsize;
};

typedef struct malloc_chunk* mchunkptr

#define mem2chunk(mem) ((mchunkptr)((char*)(mem) - 2*SIZE_SZ))

#define PREV_INUSE 0x1

#define IS_MMAPPED 0x2

#define NON_MAIN_ARENA 0x4

#define SIZE_BITS (PREV_INUSE | IS_MMAPPED | NON_MAIN_ARENA)

/* Get size, ignoring use bits */
#define chunksize(p)         ((p)->size & ~(SIZE_BITS))


void __libc_free (void *mem)
{
    mstate ar_ptr;
    mchunkptr p;      /* chunk corresponding to mem */

    if (mem == 0)     /* free(0) has no effect */
        return;

    p = mem2chunk (mem);

    ar_ptr = arena_for_chunk (p);
    _int_free (ar_ptr, p, 0);
}

static void _int_free (mstate av, mchunkptr p, int have_lock)
{
    INTERNAL_SIZE_T size;        /* its size */

    size = chunksize (p);
}


