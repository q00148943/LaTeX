0804871c <_Z13mem_leak_testv>:
 804871c:        push   %ebp
 804871d:        mov    %esp,%ebp
 804871f:        push   %esi
 8048720:        push   %ebx
 8048721:        sub    $0x20,%esp
 8048724:        movl   $0xc,(%esp)
 804872b:        call   80485f0 <_Znwj@plt> ; 调用new申请内存
 8048730:        mov    %eax,%ebx			; 将new的返回值保存在ebx寄存器
 8048732:		 mov	%ebx,(%esp)			; 新申请内存的指针压栈，即this指针
 8048735:		 call	8048806 <_ZN2D1C1Ev> ; 调用D1的构造函数
 804873a:		 mov	%ebx,-0xc(%ebp)		 ; 新申请的内存指针保存在栈上，即代码中的pObj指针
 804873d:		 cmpl	$0x0,-0xc(%ebp)		 ; 判断指针是否为空
 8048741:        je	    804876b <_Z13mem_leak_testv+0x4f>
 8048743:        mov    -0xc(%ebp),%eax	; pObj所指地址保存到eax寄存器
 8048746:		 mov	(%eax),%eax		; 取出该地址前四个字节的内容（即虚函数表的首地址）到eax寄存器
 8048748:		 add	$0x4,%eax		; 从虚函数表的起始地址偏移4个字节
 804874b:		 mov	(%eax),%eax		; 取出偏移后地址的内容，即虚函数表中的第2个虚函数地址
 804874d:        mov    -0xc(%ebp),%edx ; this指针到edx
 8048750:        mov    %edx,(%esp)		; this指针压栈
 8048753:        call	*%eax			; 调用虚虚函数表中的第二个函数
 8048755:        jmp    804876b <_Z13mem_leak_testv+0x4f>
 8048757:        mov    %eax,%esi
 8048759:        mov    %ebx,(%esp)
 804875c:        call	80485c0 <_ZdlPv@plt>
 8048761:        mov    %esi,%eax
 8048763:        mov    %eax,(%esp)
 8048766:        call	8048610 <_Unwind_Resume@plt>
 804876b:        nop
 804876c:        add    $0x20,%esp
 804876f:        pop    %ebx
 8048770:        pop    %esi
 8048771:        pop    %ebp
 8048772:        ret	   
