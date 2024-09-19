
main.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <main>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
   f:	48 8b 3d 00 00 00 00 	mov    0x0(%rip),%rdi        # 16 <main+0x16>
  16:	48 8d 75 f4          	lea    -0xc(%rbp),%rsi
  1a:	e8 00 00 00 00       	call   1f <main+0x1f>
  1f:	c7 45 fc 02 00 00 00 	movl   $0x2,-0x4(%rbp)
  26:	c7 45 f8 01 00 00 00 	movl   $0x1,-0x8(%rbp)
  2d:	8b 45 fc             	mov    -0x4(%rbp),%eax
  30:	3b 45 f4             	cmp    -0xc(%rbp),%eax
  33:	7f 15                	jg     4a <main+0x4a>
  35:	8b 45 f8             	mov    -0x8(%rbp),%eax
  38:	0f af 45 fc          	imul   -0x4(%rbp),%eax
  3c:	89 45 f8             	mov    %eax,-0x8(%rbp)
  3f:	8b 45 fc             	mov    -0x4(%rbp),%eax
  42:	83 c0 01             	add    $0x1,%eax
  45:	89 45 fc             	mov    %eax,-0x4(%rbp)
  48:	eb e3                	jmp    2d <main+0x2d>
  4a:	8b 75 f8             	mov    -0x8(%rbp),%esi
  4d:	48 8b 3d 00 00 00 00 	mov    0x0(%rip),%rdi        # 54 <main+0x54>
  54:	e8 00 00 00 00       	call   59 <main+0x59>
  59:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 60 <main+0x60>
  60:	48 89 c7             	mov    %rax,%rdi
  63:	e8 00 00 00 00       	call   68 <main+0x68>
  68:	31 c0                	xor    %eax,%eax
  6a:	48 83 c4 10          	add    $0x10,%rsp
  6e:	5d                   	pop    %rbp
  6f:	c3                   	ret    

Disassembly of section .text.startup:

0000000000000000 <__cxx_global_var_init>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	53                   	push   %rbx
   5:	50                   	push   %rax
   6:	48 8d 1d 00 00 00 00 	lea    0x0(%rip),%rbx        # d <__cxx_global_var_init+0xd>
   d:	48 89 df             	mov    %rbx,%rdi
  10:	e8 00 00 00 00       	call   15 <__cxx_global_var_init+0x15>
  15:	48 8b 3d 00 00 00 00 	mov    0x0(%rip),%rdi        # 1c <__cxx_global_var_init+0x1c>
  1c:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 23 <__cxx_global_var_init+0x23>
  23:	48 89 de             	mov    %rbx,%rsi
  26:	e8 00 00 00 00       	call   2b <__cxx_global_var_init+0x2b>
  2b:	48 83 c4 08          	add    $0x8,%rsp
  2f:	5b                   	pop    %rbx
  30:	5d                   	pop    %rbp
  31:	c3                   	ret    
  32:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  39:	00 00 00 
  3c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000040 <_GLOBAL__sub_I_main.cpp>:
  40:	55                   	push   %rbp
  41:	48 89 e5             	mov    %rsp,%rbp
  44:	e8 b7 ff ff ff       	call   0 <__cxx_global_var_init>
  49:	5d                   	pop    %rbp
  4a:	c3                   	ret    
