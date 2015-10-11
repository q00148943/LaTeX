_GLIBCXX_WEAK_DEFINITION void
operator delete[] (void *ptr) _GLIBCXX_USE_NOEXCEPT
{
    ::operator delete (ptr);
}
