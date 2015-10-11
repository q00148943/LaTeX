0804853d <main>:
 804853d:        push   %ebp
 804853e:        mov    %esp,%ebp
 8048540:        and    $0xfffffff0,%esp
 8048543:        sub    $0x20,%esp
 8048546:        mov    $0x660,%eax
 804854b:        add    $0x8,%eax
 804854e:        mov    %eax,(%esp)
 8048551:        call   8048420 <_Znaj@plt>
 8048556:        mov    %eax,0x1c(%esp)
 804855a:        mov    0x1c(%esp),%eax
 804855e:        mov    %eax,0x4(%esp)
 8048562:        movl   $0x8048620,(%esp)
 8048569:        call   8048410 <printf@plt>
 804856e:        cmpl   $0x0,0x1c(%esp)
 8048573:        je     8048581 <main+0x44>
 8048575:        mov    0x1c(%esp),%eax
 8048579:        mov    %eax,(%esp)
 804857c:        call   8048430 <_ZdaPv@plt>
 8048581:        mov    $0x0,%eax
 8048586:        leave
 8048587:        ret
 8048588:        xchg   %ax,%ax
 804858a:        xchg   %ax,%ax
 804858c:        xchg   %ax,%ax
 804858e:        xchg   %ax,%ax
