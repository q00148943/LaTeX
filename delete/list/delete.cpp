// A freestanding C runtime may not provide "free" -- but there is no
// other reasonable way to implement "operator delete".
namespace std
{
    _GLIBCXX_BEGIN_NAMESPACE_VERSION
    extern "C" void free(void*);
    _GLIBCXX_END_NAMESPACE_VERSION
} // namespace

_GLIBCXX_WEAK_DEFINITION void
operator delete(void* ptr) _GLIBCXX_USE_NOEXCEPT
{
    std::free(ptr);
}

