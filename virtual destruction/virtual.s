0804871c <_Z13mem_leak_testv>:
 804871c:        push   %ebp
 804871d:        mov    %esp,%ebp
 804871f:        push   %esi
 8048720:        push   %ebx
 8048721:        sub    $0x20,%esp
 8048724:        movl   $0xc,(%esp)
 804872b:        call   80485f0 <_Znwj@plt> 
 8048730:		 mov	%eax,%ebx			
 8048732:		 mov	%ebx,(%esp)			
 8048735:		 call	8048806 <_ZN2D1C1Ev> 
 804873a:		 mov	%ebx,-0xc(%ebp)		 
 804873d:		 cmpl	$0x0,-0xc(%ebp)		 
 8048741:        je	    804876b <_Z13mem_leak_testv+0x4f>
 8048743:        mov    -0xc(%ebp),%eax	
 8048746:		 mov	(%eax),%eax		
 8048748:		 add	$0x4,%eax		
 804874b:		 mov	(%eax),%eax		
 804874d:		 mov	-0xc(%ebp),%edx 
 8048750:		 mov	%edx,(%esp)		
 8048753:		 call	*%eax			
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
