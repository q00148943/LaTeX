0000068b <_Z7getNodev>:
 68b:   55                      push   %ebp
 68c:   89 e5                   mov    %esp,%ebp
 68e:   56                      push   %esi
 68f:   53                      push   %ebx
 690:   83 ec 20                sub    $0x20,%esp
 693:   c7 04 24 08 00 00 00    movl   $0x8,(%esp)
 69a:   e8 fc ff ff ff          call   69b <_Z7getNodev+0x10>
 69f:   89 c3                   mov    %eax,%ebx
 6a1:   89 1c 24                mov    %ebx,(%esp)
 6a4:   e8 fc ff ff ff          call   6a5 <_Z7getNodev+0x1a>
 6a9:   89 5d f4                mov    %ebx,-0xc(%ebp)
 6ac:   83 7d f4 00             cmpl   $0x0,-0xc(%ebp)
 6b0:   75 13                   jne    6c5 <_Z7getNodev+0x3a>
 6b2:   c7 04 24 fc 06 00 00    movl   $0x6fc,(%esp)
 6b9:   e8 fc ff ff ff          call   6ba <_Z7getNodev+0x2f>
 6be:   b8 00 00 00 00          mov    $0x0,%eax
 6c3:   eb 19                   jmp    6de <_Z7getNodev+0x53>
 6c5:   8b 45 f4                mov    -0xc(%ebp),%eax
 6c8:   eb 14                   jmp    6de <_Z7getNodev+0x53>
 6ca:   89 c6                   mov    %eax,%esi
 6cc:   89 1c 24                mov    %ebx,(%esp)
 6cf:   e8 fc ff ff ff          call   6d0 <_Z7getNodev+0x45>
 6d4:   89 f0                   mov    %esi,%eax
 6d6:   89 04 24                mov    %eax,(%esp)
 6d9:   e8 fc ff ff ff          call   6da <_Z7getNodev+0x4f>
 6de:   83 c4 20                add    $0x20,%esp
 6e1:   5b                      pop    %ebx
 6e2:   5e                      pop    %esi
 6e3:   5d                      pop    %ebp
 6e4:   c3                      ret
