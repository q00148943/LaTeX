// A freestanding C runtime may not provide "malloc" -- but there is no
// other reasonable way to implement "operator new".
extern "C" void *malloc (std::size_t);
#endif

_GLIBCXX_WEAK_DEFINITION void *
operator new (std::size_t sz) _GLIBCXX_THROW (std::bad_alloc)
{
    void *p;

    /* malloc (0) is unpredictable; avoid it.  */
    if (sz == 0)
        sz = 1;

    while (__builtin_expect ((p = malloc (sz)) == 0, false))
    {
        new_handler handler = std::get_new_handler ();
        if (! handler)
            _GLIBCXX_THROW_OR_ABORT(bad_alloc());
        handler ();
    }

    return p;
}

