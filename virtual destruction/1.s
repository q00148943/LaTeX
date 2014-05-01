0804871c <_Z13mem_leak_testv>:
push   %ebp
mov	   %esp,%ebp
push   %esi
push   %ebx
sub	   $0x20,%esp
movl   $0xc,(%esp)
call   80485f0 <_Znwj@plt>  ; call new to allocate mem
mov	   %eax,%ebx			; save the return value of new
							; to register ebx
mov	   %ebx,(%esp)			; push "this" pointer on stack
							; as the first para to D1::D1()
call   8048806 <_ZN2D1C1Ev> ; call the constructor of D1
mov	   %ebx,-0xc(%ebp)		; save the "this" pointer on stack
cmpl   $0x0,-0xc(%ebp)		; check the pointer
je	   804876b <_Z13mem_leak_testv+0x4f>
mov	   -0xc(%ebp),%eax	    ; save the new object pointer to
		                    ; register eax 
mov	   (%eax),%eax          ; save the virtual table address eax
add	   $0x4,%eax		    ; virtual talbe address + 4
mov	   (%eax),%eax          ; get the second function address in
		                    ; virtual table
mov	   -0xc(%ebp),%edx      ; "this" pointer to register edx
mov	   %edx,(%esp)		    ; push "this" pointer on stack
call   *%eax	     		; call the second function in virtual table
jmp	   804876b <_Z13mem_leak_testv+0x4f>
mov	   %eax,%esi
mov	   %ebx,(%esp)
call   80485c0 <_ZdlPv@plt>
mov	   %esi,%eax
mov	   %eax,(%esp)
