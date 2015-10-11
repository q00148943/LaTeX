/*  Same, except also perform argument check */
#define checked_request2size(req, sz)           \
    if (REQUEST_OUT_OF_RANGE (req)) {           \
        __set_errno (ENOMEM);                   \
        return 0;                               \
    }                                           \
    (sz) = request2size (req);


/* pad request bytes into a usable size -- internal version */
#define request2size(req)                               \
    (((req) + SIZE_SZ + MALLOC_ALIGN_MASK < MINSIZE)  ? \
     MINSIZE :                                          \
     ((req) + SIZE_SZ + MALLOC_ALIGN_MASK) & ~MALLOC_ALIGN_MASK)
