/*
 *         call graph
 * void *__libc_malloc (size_t bytes)
 *            ||
 *            \/
 * void *_int_malloc (size_t bytes)
 */

static void *_int_malloc (mstate av, size_t bytes)
{
    INTERNAL_SIZE_T nb;        /* normalized request size */

    /*
      Convert request size to internal form by adding SIZE_SZ
      bytes overhead plus possibly more to obtain necessary 
      alignment and/or to obtain a size of at least MINSIZE, 
      the smallest allocatable size. Also, checked_request2size
      traps (returning 0) request sizes that are so large that 
      they wrap around zero when padded and aligned.
    */

    checked_request2size (bytes, nb);

    /* ... */
}

