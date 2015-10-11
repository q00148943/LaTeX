






push   %ebx
sub    $0x8,%esp
call   80482e1 <_init+0x9>
pop    %ebx
add    $0x1d13,%ebx
mov    -0x4(%ebx),%eax
test   %eax,%eax
je     80482f7 <_init+0x1f>
call   8048330 <__gmon_start__@plt>
call   80483e0 <frame_dummy>
call   80484e0 <__do_global_ctors_aux>
add    $0x8,%esp
pop    %ebx
ret    




pushl  0x8049ff8
jmp    *0x8049ffc
add    %al,(%eax)



jmp    *0x804a000
push   $0x0
jmp    8048310 <_init+0x38>


jmp    *0x804a004
push   $0x8
jmp    8048310 <_init+0x38>


jmp    *0x804a008
push   $0x10
jmp    8048310 <_init+0x38>




xor    %ebp,%ebp
pop    %esi
mov    %esp,%ecx
and    $0xfffffff0,%esp
push   %eax
push   %esp
push   %edx
push   $0x80484d0
push   $0x8048460
push   %ecx
push   %esi
push   $0x804844b
call   8048340 <__libc_start_main@plt>
hlt    
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop


push   %ebp
mov    %esp,%ebp
push   %ebx
sub    $0x4,%esp
cmpb   $0x0,0x804a014
jne    80483cf <__do_global_dtors_aux+0x4f>
mov    0x804a018,%eax
mov    $0x8049f20,%ebx
sub    $0x8049f1c,%ebx
sar    $0x2,%ebx
sub    $0x1,%ebx
cmp    %ebx,%eax
jae    80483c8 <__do_global_dtors_aux+0x48>
lea    0x0(%esi),%esi
add    $0x1,%eax
mov    %eax,0x804a018
call   *0x8049f1c(,%eax,4)
mov    0x804a018,%eax
cmp    %ebx,%eax
jb     80483b0 <__do_global_dtors_aux+0x30>
movb   $0x1,0x804a014
add    $0x4,%esp
pop    %ebx
pop    %ebp
ret    
lea    0x0(%esi,%eiz,1),%esi
lea    0x0(%edi,%eiz,1),%edi


push   %ebp
mov    %esp,%ebp
sub    $0x18,%esp
mov    0x8049f24,%eax
test   %eax,%eax
je     8048401 <frame_dummy+0x21>
mov    $0x0,%eax
test   %eax,%eax
je     8048401 <frame_dummy+0x21>
movl   $0x8049f24,(%esp)
call   *%eax
leave  
ret    
nop


push   %ebp
mov    %esp,%ebp
push   %edi
push   %ebx
sub    $0x410,%esp
mov    %gs:0x14,%eax
mov    %eax,-0xc(%ebp)
xor    %eax,%eax
lea    -0x40c(%ebp),%ebx
mov    $0x0,%eax
mov    $0x100,%edx
mov    %ebx,%edi
mov    %edx,%ecx
rep stos %eax,%es:(%edi)
mov    -0xc(%ebp),%eax
xor    %gs:0x14,%eax
je     8048441 <func+0x3d>
call   8048320 <__stack_chk_fail@plt>
add    $0x410,%esp
pop    %ebx
pop    %edi
pop    %ebp
ret    


push   %ebp
mov    %esp,%ebp
mov    $0x0,%eax
pop    %ebp
ret    



push   %ebp
push   %edi
push   %esi
push   %ebx
call   80484d2 <__i686.get_pc_thunk.bx>
add    $0x1b8b,%ebx
sub    $0x1c,%esp
mov    0x30(%esp),%ebp
lea    -0xe0(%ebx),%edi
call   80482d8 <_init>
lea    -0xe0(%ebx),%eax
sub    %eax,%edi
sar    $0x2,%edi
test   %edi,%edi
je     80484b9 <__libc_csu_init+0x59>
xor    %esi,%esi
lea    0x0(%esi),%esi
mov    0x38(%esp),%eax
mov    %ebp,(%esp)
mov    %eax,0x8(%esp)
mov    0x34(%esp),%eax
mov    %eax,0x4(%esp)
call   *-0xe0(%ebx,%esi,4)
add    $0x1,%esi
cmp    %edi,%esi
jne    8048498 <__libc_csu_init+0x38>
add    $0x1c,%esp
pop    %ebx
pop    %esi
pop    %edi
pop    %ebp
ret    
jmp    80484d0 <__libc_csu_fini>
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop


repz ret 


mov    (%esp),%ebx
ret    
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop


push   %ebp
mov    %esp,%ebp
push   %ebx
sub    $0x4,%esp
mov    0x8049f14,%eax
cmp    $0xffffffff,%eax
je     8048504 <__do_global_ctors_aux+0x24>
mov    $0x8049f14,%ebx
xchg   %ax,%ax
sub    $0x4,%ebx
call   *%eax
mov    (%ebx),%eax
cmp    $0xffffffff,%eax
jne    80484f8 <__do_global_ctors_aux+0x18>
add    $0x4,%esp
pop    %ebx
pop    %ebp
ret    
nop
nop




push   %ebx
sub    $0x8,%esp
call   8048515 <_fini+0x9>
pop    %ebx
add    $0x1adf,%ebx
call   8048380 <__do_global_dtors_aux>
add    $0x8,%esp
pop    %ebx
ret    
