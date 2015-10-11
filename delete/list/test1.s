0804868d <main>:
 804868d:        push   %ebp
 804868e:        mov    %esp,%ebp
 8048690:        push   %edi
 8048691:        push   %esi
 8048692:        push   %ebx
 8048693:        and    $0xfffffff0,%esp
 8048696:        sub    $0x20,%esp
 8048699:        movl   $0x44,(%esp)
 80486a0:        call   8048550 <_Znaj@plt>
 80486a5:        mov    %eax,%ebx
 80486a7:        movl   $0x10,(%ebx)
 80486ad:        lea    0x4(%ebx),%esi
 80486b0:        mov    $0xf,%edi
 80486b5:        mov    %esi,0xc(%esp)
 80486b9:        jmp    80486cf <main+0x42>
 80486bb:        mov    0xc(%esp),%eax
 80486bf:        mov    %eax,(%esp)
 80486c2:        call   804877a <_ZN1AC1Ev>
 80486c7:        addl   $0x4,0xc(%esp)
 80486cc:        sub    $0x1,%edi
 80486cf:        cmp    $0xffffffff,%edi
 80486d2:        jne    80486bb <main+0x2e>
 80486d4:        lea    0x4(%ebx),%eax
 80486d7:        mov    %eax,0x1c(%esp)
 80486db:        mov    0x1c(%esp),%eax
 80486df:        mov    %eax,0x4(%esp)
 80486e3:        movl   $0x8048840,(%esp)
 80486ea:        call   8048540 <printf@plt>
 80486ef:        cmpl   $0x0,0x1c(%esp)
 80486f4:        je     804872f <main+0xa2>
 80486f6:        mov    0x1c(%esp),%eax
 80486fa:        sub    $0x4,%eax
 80486fd:        mov    (%eax),%eax
 80486ff:        lea    0x0(,%eax,4),%edx
 8048706:        mov    0x1c(%esp),%eax
 804870a:        lea    (%edx,%eax,1),%ebx
 804870d:        cmp    0x1c(%esp),%ebx
 8048711:        je     8048720 <main+0x93>
 8048713:        sub    $0x4,%ebx
 8048716:        mov    %ebx,(%esp)
 8048719:        call   804878e <_ZN1AD1Ev>
 804871e:        jmp    804870d <main+0x80>
 8048720:        mov    0x1c(%esp),%eax
 8048724:        sub    $0x4,%eax
 8048727:        mov    %eax,(%esp)
 804872a:        call   8048560 <_ZdaPv@plt>
 804872f:        mov    $0x0,%eax
 8048734:        jmp    8048772 <main+0xe5>
 8048736:        mov    %eax,0xc(%esp)
 804873a:        test   %esi,%esi
 804873c:        je     804875c <main+0xcf>
 804873e:        mov    $0xf,%eax
 8048743:        sub    %edi,%eax
 8048745:        shl    $0x2,%eax
 8048748:        lea    (%esi,%eax,1),%edi
 804874b:        cmp    %esi,%edi
 804874d:        je     804875c <main+0xcf>
 804874f:        sub    $0x4,%edi
 8048752:        mov    %edi,(%esp)
 8048755:        call   804878e <_ZN1AD1Ev>
 804875a:        jmp    804874b <main+0xbe>
 804875c:        mov    0xc(%esp),%esi
 8048760:        mov    %ebx,(%esp)
 8048763:        call   8048560 <_ZdaPv@plt>
 8048768:        mov    %esi,%eax
 804876a:        mov    %eax,(%esp)
 804876d:        call   8048580 <_Unwind_Resume@plt>
 8048772:        lea    -0xc(%ebp),%esp
 8048775:        pop    %ebx
 8048776:        pop    %esi
 8048777:        pop    %edi
 8048778:        pop    %ebp
 8048779:        ret    

