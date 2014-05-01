Disassembly of section .text:

;; Base::Base()
080485c2 <_ZN4BaseC1Ev>:
 80485c2:       55                      push   %ebp
 80485c3:       89 e5                   mov    %esp,%ebp
 80485c5:       8b 45 08                mov    0x8(%ebp),%eax
 80485c8:       c7 00 d8 87 04 08       movl   $0x80487d8,(%eax)
 80485ce:       5d                      pop    %ebp
 80485cf:       c3                      ret

;; Base::~Base()
080485d0 <_ZN4BaseD1Ev>:
 80485d0:       55                      push   %ebp
 80485d1:       89 e5                   mov    %esp,%ebp
 80485d3:       83 ec 18                sub    $0x18,%esp
 80485d6:       8b 45 08                mov    0x8(%ebp),%eax
 80485d9:       c7 00 d8 87 04 08       movl   $0x80487d8,(%eax)
 80485df:       b8 00 00 00 00          mov    $0x0,%eax
 80485e4:       83 e0 01                and    $0x1,%eax
 80485e7:       85 c0                   test   %eax,%eax
 80485e9:       74 0b                   je     80485f6 <_ZN4BaseD1Ev+0x26>
 80485eb:       8b 45 08                mov    0x8(%ebp),%eax
 80485ee:       89 04 24                mov    %eax,(%esp)
 80485f1:       e8 6a fe ff ff          call   8048460 <_ZdlPv@plt>
 80485f6:       c9                      leave
 80485f7:       c3                      ret

;; Base::~Base()		
080485f8 <_ZN4BaseD0Ev>:
 80485f8:       55                      push   %ebp
 80485f9:       89 e5                   mov    %esp,%ebp
 80485fb:       83 ec 18                sub    $0x18,%esp
 80485fe:       8b 45 08                mov    0x8(%ebp),%eax
 8048601:       89 04 24                mov    %eax,(%esp)
 8048604:       e8 c7 ff ff ff          call   80485d0 <_ZN4BaseD1Ev>
 8048609:       8b 45 08                mov    0x8(%ebp),%eax
 804860c:       89 04 24                mov    %eax,(%esp)
 804860f:       e8 4c fe ff ff          call   8048460 <_ZdlPv@plt>
 8048614:       c9                      leave
 8048615:       c3                      ret

;; Base::fun1()
08048616 <_ZN4Base4fun1Ev>:
 8048616:       55                      push   %ebp
 8048617:       89 e5                   mov    %esp,%ebp
 8048619:       5d                      pop    %ebp
 804861a:       c3                      ret
 804861b:       90                      nop

;; Base::fun2()
0804861c <_ZN4Base4fun2Ev>:
 804861c:       55                      push   %ebp
 804861d:       89 e5                   mov    %esp,%ebp
 804861f:       5d                      pop    %ebp
 8048620:       c3                      ret
 8048621:       90                      nop

;; D1::D1()
08048622 <_ZN2D1C1Ev>:
 8048622:       55                      push   %ebp
 8048623:       89 e5                   mov    %esp,%ebp
 8048625:       83 ec 18                sub    $0x18,%esp
 8048628:       8b 45 08                mov    0x8(%ebp),%eax
 804862b:       89 04 24                mov    %eax,(%esp)
 804862e:       e8 8f ff ff ff          call   80485c2 <_ZN4BaseC1Ev>
 8048633:       8b 45 08                mov    0x8(%ebp),%eax
 8048636:       c7 00 c0 87 04 08       movl   $0x80487c0,(%eax)
 804863c:       c9                      leave
 804863d:       c3                      ret

;; D1::~D1()
0804863e <_ZN2D1D1Ev>:
 804863e:       55                      push   %ebp
 804863f:       89 e5                   mov    %esp,%ebp
 8048641:       83 ec 18                sub    $0x18,%esp
 8048644:       8b 45 08                mov    0x8(%ebp),%eax
 8048647:       c7 00 c0 87 04 08       movl   $0x80487c0,(%eax)
 804864d:       8b 45 08                mov    0x8(%ebp),%eax
 8048650:       89 04 24                mov    %eax,(%esp)
 8048653:       e8 78 ff ff ff          call   80485d0 <_ZN4BaseD1Ev>
 8048658:       b8 00 00 00 00          mov    $0x0,%eax
 804865d:       83 e0 01                and    $0x1,%eax
 8048660:       85 c0                   test   %eax,%eax
 8048662:       74 0b                   je     804866f <_ZN2D1D1Ev+0x31>
 8048664:       8b 45 08                mov    0x8(%ebp),%eax
 8048667:       89 04 24                mov    %eax,(%esp)
 804866a:       e8 f1 fd ff ff          call   8048460 <_ZdlPv@plt>
 804866f:       c9                      leave
 8048670:       c3                      ret
 8048671:       90                      nop

;; D1::~D1()
08048672 <_ZN2D1D0Ev>:
 8048672:       55                      push   %ebp
 8048673:       89 e5                   mov    %esp,%ebp
 8048675:       83 ec 18                sub    $0x18,%esp
 8048678:       8b 45 08                mov    0x8(%ebp),%eax
 804867b:       89 04 24                mov    %eax,(%esp)
 804867e:       e8 bb ff ff ff          call   804863e <_ZN2D1D1Ev>
 8048683:       8b 45 08                mov    0x8(%ebp),%eax
 8048686:       89 04 24                mov    %eax,(%esp)
 8048689:       e8 d2 fd ff ff          call   8048460 <_ZdlPv@plt>
 804868e:       c9                      leave
 804868f:       c3                      ret
		
;; D1::fun1()
08048690 <_ZN2D14fun1Ev>:
 8048690:       55                      push   %ebp
 8048691:       89 e5                   mov    %esp,%ebp
 8048693:       5d                      pop    %ebp
 8048694:       c3                      ret
 8048695:       90                      nop
		
