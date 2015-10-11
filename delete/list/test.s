0804868d <main>:
 804868d:        push   %ebp
 804868e:        mov    %esp,%ebp
 8048690:        push   %esi
 8048691:        push   %ebx
 8048692:        and    $0xfffffff0,%esp
 8048695:        sub    $0x20,%esp
 8048698:        movl   $0x4,(%esp)
 804869f:        call   8048560 <_Znwj@plt>
 80486a4:        mov    %eax,%ebx
 80486a6:        mov    %ebx,(%esp)
 80486a9:        call   8048700 <_ZN1AC1Ev>
 80486ae:        mov    %ebx,0x1c(%esp)
 80486b2:        mov    0x1c(%esp),%eax
 80486b6:        mov    %eax,0x4(%esp)
 80486ba:        movl   $0x80487c0,(%esp)
 80486c1:        call   8048550 <printf@plt>
 80486c6:        mov    0x1c(%esp),%ebx
 80486ca:        test   %ebx,%ebx
 80486cc:        je     80486de <main+0x51>
 80486ce:        mov    %ebx,(%esp)
 80486d1:        call   8048714 <_ZN1AD1Ev>
 80486d6:        mov    %ebx,(%esp)
 80486d9:        call   8048520 <_ZdlPv@plt>
 80486de:        mov    $0x0,%eax
 80486e3:        jmp    80486f9 <main+0x6c>
 80486e5:        mov    %eax,%esi
 80486e7:        mov    %ebx,(%esp)
 80486ea:        call   8048520 <_ZdlPv@plt>
 80486ef:        mov    %esi,%eax
 80486f1:        mov    %eax,(%esp)
 80486f4:        call   8048580 <_Unwind_Resume@plt>
 80486f9:        lea    -0x8(%ebp),%esp
 80486fc:        pop    %ebx
 80486fd:        pop    %esi
 80486fe:        pop    %ebp
 80486ff:        ret
