0804871c <_Z13mem_leak_testv>:
 804871c:        push   %ebp
 804871d:        mov    %esp,%ebp
 804871f:        push   %esi
 8048720:        push   %ebx
 8048721:        sub    $0x20,%esp
 8048724:        movl   $0xc,(%esp)
 804872b:        call   80485f0 <_Znwj@plt>
 8048730:        mov    %eax,%ebx
 8048732:        mov    %ebx,(%esp)
 8048735:        call   80487d0 <_ZN2D1C1Ev>
 804873a:        mov    %ebx,-0xc(%ebp)
 804873d:        mov    -0xc(%ebp),%ebx
 8048740:        test   %ebx,%ebx
 8048742:        je     804876a <_Z13mem_leak_testv+0x4e>
 8048744:        mov    %ebx,(%esp)
 8048747:        call   80487b0 <_ZN4BaseD1Ev>
 804874c:        mov    %ebx,(%esp)
 804874f:        call   80485c0 <_ZdlPv@plt>
 804876a:        nop
 804876b:        add    $0x20,%esp
 804876e:        pop    %ebx
 804876f:        pop    %esi
 8048770:        pop    %ebp
 8048771:        ret
