<_Z7getNodev>:
55						push   %ebp
89 e5					mov	   %esp,%ebp
57						push   %edi
56						push   %esi
53						push   %ebx
83 ec 2c				sub	   $0x2c,%esp
e8 c7 fe ff ff			call   5a0 <__x86.get_pc_thunk.bx>
81 c3 27 19 00 00		add	   $0x1927,%ebx
c7 04 24 08 00 00 00	movl   $0x8,(%esp)
e8 75 fe ff ff			call   560 <_Znwj@plt>
89 c6					mov	   %eax,%esi
89 34 24				mov	   %esi,(%esp)
e8 5b fe ff ff			call   550 <_ZN8DataNodeC1Ev@plt>
89 75 e4				mov	   %esi,-0x1c(%ebp)
83 7d e4 00				cmpl   $0x0,-0x1c(%ebp)
75 15					jne	   713 <_Z7getNodev+0x48>
8d 83 48 e7 ff ff		lea	   -0x18b8(%ebx),%eax
89 04 24				mov	   %eax,(%esp)
e8 64 fe ff ff			call   570 <puts@plt>
b8 00 00 00 00			mov	   $0x0,%eax
eb 19					jmp	   72c <_Z7getNodev+0x61>
8b 45 e4				mov	   -0x1c(%ebp),%eax
eb 14					jmp	   72c <_Z7getNodev+0x61>
89 c7					mov	   %eax,%edi
89 34 24				mov	   %esi,(%esp)
e8 1e fe ff ff			call   540 <_ZdlPv@plt>
89 f8					mov	   %edi,%eax
89 04 24				mov	   %eax,(%esp)
e8 54 fe ff ff			call   580 <_Unwind_Resume@plt>
83 c4 2c				add	   $0x2c,%esp
5b						pop	   %ebx
5e						pop	   %esi
5f						pop	   %edi
5d						pop	   %ebp
c3						ret

		
