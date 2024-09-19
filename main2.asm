
main:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <_ZNSirsERi@plt-0x10>:
    1020:	ff 35 5a 2f 00 00    	push   0x2f5a(%rip)        # 3f80 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 5c 2f 00 00    	jmp    *0x2f5c(%rip)        # 3f88 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <_ZNSirsERi@plt>:
    1030:	ff 25 5a 2f 00 00    	jmp    *0x2f5a(%rip)        # 3f90 <_ZNSirsERi@GLIBCXX_3.4>
    1036:	68 00 00 00 00       	push   $0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001040 <__cxa_atexit@plt>:
    1040:	ff 25 52 2f 00 00    	jmp    *0x2f52(%rip)        # 3f98 <__cxa_atexit@GLIBC_2.2.5>
    1046:	68 01 00 00 00       	push   $0x1
    104b:	e9 d0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001050 <_ZNSolsEPFRSoS_E@plt>:
    1050:	ff 25 4a 2f 00 00    	jmp    *0x2f4a(%rip)        # 3fa0 <_ZNSolsEPFRSoS_E@GLIBCXX_3.4>
    1056:	68 02 00 00 00       	push   $0x2
    105b:	e9 c0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001060 <_ZNSt8ios_base4InitC1Ev@plt>:
    1060:	ff 25 42 2f 00 00    	jmp    *0x2f42(%rip)        # 3fa8 <_ZNSt8ios_base4InitC1Ev@GLIBCXX_3.4>
    1066:	68 03 00 00 00       	push   $0x3
    106b:	e9 b0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001070 <_ZNSolsEi@plt>:
    1070:	ff 25 3a 2f 00 00    	jmp    *0x2f3a(%rip)        # 3fb0 <_ZNSolsEi@GLIBCXX_3.4>
    1076:	68 04 00 00 00       	push   $0x4
    107b:	e9 a0 ff ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .plt.got:

0000000000001080 <__cxa_finalize@plt>:
    1080:	ff 25 32 2f 00 00    	jmp    *0x2f32(%rip)        # 3fb8 <__cxa_finalize@GLIBC_2.2.5>
    1086:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000001090 <__cxx_global_var_init>:
    1090:	55                   	push   %rbp
    1091:	48 89 e5             	mov    %rsp,%rbp
    1094:	53                   	push   %rbx
    1095:	50                   	push   %rax
    1096:	48 8d 1d 74 2f 00 00 	lea    0x2f74(%rip),%rbx        # 4011 <_ZStL8__ioinit>
    109d:	48 89 df             	mov    %rbx,%rdi
    10a0:	e8 bb ff ff ff       	call   1060 <_ZNSt8ios_base4InitC1Ev@plt>
    10a5:	48 8b 3d 4c 2f 00 00 	mov    0x2f4c(%rip),%rdi        # 3ff8 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
    10ac:	48 8d 15 55 2f 00 00 	lea    0x2f55(%rip),%rdx        # 4008 <__dso_handle>
    10b3:	48 89 de             	mov    %rbx,%rsi
    10b6:	e8 85 ff ff ff       	call   1040 <__cxa_atexit@plt>
    10bb:	48 83 c4 08          	add    $0x8,%rsp
    10bf:	5b                   	pop    %rbx
    10c0:	5d                   	pop    %rbp
    10c1:	c3                   	ret    
    10c2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    10c9:	00 00 00 
    10cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000010d0 <_GLOBAL__sub_I_main.cpp>:
    10d0:	55                   	push   %rbp
    10d1:	48 89 e5             	mov    %rsp,%rbp
    10d4:	e8 b7 ff ff ff       	call   1090 <__cxx_global_var_init>
    10d9:	5d                   	pop    %rbp
    10da:	c3                   	ret    
    10db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010e0 <_start>:
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	31 ed                	xor    %ebp,%ebp
    10e6:	49 89 d1             	mov    %rdx,%r9
    10e9:	5e                   	pop    %rsi
    10ea:	48 89 e2             	mov    %rsp,%rdx
    10ed:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    10f1:	50                   	push   %rax
    10f2:	54                   	push   %rsp
    10f3:	45 31 c0             	xor    %r8d,%r8d
    10f6:	31 c9                	xor    %ecx,%ecx
    10f8:	48 8d 3d d1 00 00 00 	lea    0xd1(%rip),%rdi        # 11d0 <main>
    10ff:	ff 15 c3 2e 00 00    	call   *0x2ec3(%rip)        # 3fc8 <__libc_start_main@GLIBC_2.34>
    1105:	f4                   	hlt    
    1106:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    110d:	00 00 00 

0000000000001110 <deregister_tm_clones>:
    1110:	48 8d 3d f9 2e 00 00 	lea    0x2ef9(%rip),%rdi        # 4010 <__TMC_END__>
    1117:	48 8d 05 f2 2e 00 00 	lea    0x2ef2(%rip),%rax        # 4010 <__TMC_END__>
    111e:	48 39 f8             	cmp    %rdi,%rax
    1121:	74 15                	je     1138 <deregister_tm_clones+0x28>
    1123:	48 8b 05 ae 2e 00 00 	mov    0x2eae(%rip),%rax        # 3fd8 <_ITM_deregisterTMCloneTable@Base>
    112a:	48 85 c0             	test   %rax,%rax
    112d:	74 09                	je     1138 <deregister_tm_clones+0x28>
    112f:	ff e0                	jmp    *%rax
    1131:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1138:	c3                   	ret    
    1139:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001140 <register_tm_clones>:
    1140:	48 8d 3d c9 2e 00 00 	lea    0x2ec9(%rip),%rdi        # 4010 <__TMC_END__>
    1147:	48 8d 35 c2 2e 00 00 	lea    0x2ec2(%rip),%rsi        # 4010 <__TMC_END__>
    114e:	48 29 fe             	sub    %rdi,%rsi
    1151:	48 89 f0             	mov    %rsi,%rax
    1154:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1158:	48 c1 f8 03          	sar    $0x3,%rax
    115c:	48 01 c6             	add    %rax,%rsi
    115f:	48 d1 fe             	sar    %rsi
    1162:	74 14                	je     1178 <register_tm_clones+0x38>
    1164:	48 8b 05 85 2e 00 00 	mov    0x2e85(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    116b:	48 85 c0             	test   %rax,%rax
    116e:	74 08                	je     1178 <register_tm_clones+0x38>
    1170:	ff e0                	jmp    *%rax
    1172:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1178:	c3                   	ret    
    1179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001180 <__do_global_dtors_aux>:
    1180:	f3 0f 1e fa          	endbr64 
    1184:	80 3d 85 2e 00 00 00 	cmpb   $0x0,0x2e85(%rip)        # 4010 <__TMC_END__>
    118b:	75 2b                	jne    11b8 <__do_global_dtors_aux+0x38>
    118d:	55                   	push   %rbp
    118e:	48 83 3d 22 2e 00 00 	cmpq   $0x0,0x2e22(%rip)        # 3fb8 <__cxa_finalize@GLIBC_2.2.5>
    1195:	00 
    1196:	48 89 e5             	mov    %rsp,%rbp
    1199:	74 0c                	je     11a7 <__do_global_dtors_aux+0x27>
    119b:	48 8b 3d 66 2e 00 00 	mov    0x2e66(%rip),%rdi        # 4008 <__dso_handle>
    11a2:	e8 d9 fe ff ff       	call   1080 <__cxa_finalize@plt>
    11a7:	e8 64 ff ff ff       	call   1110 <deregister_tm_clones>
    11ac:	c6 05 5d 2e 00 00 01 	movb   $0x1,0x2e5d(%rip)        # 4010 <__TMC_END__>
    11b3:	5d                   	pop    %rbp
    11b4:	c3                   	ret    
    11b5:	0f 1f 00             	nopl   (%rax)
    11b8:	c3                   	ret    
    11b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011c0 <frame_dummy>:
    11c0:	f3 0f 1e fa          	endbr64 
    11c4:	e9 77 ff ff ff       	jmp    1140 <register_tm_clones>
    11c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011d0 <main>:
    11d0:	55                   	push   %rbp
    11d1:	48 89 e5             	mov    %rsp,%rbp
    11d4:	48 83 ec 10          	sub    $0x10,%rsp
    11d8:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
    11df:	48 8b 3d fa 2d 00 00 	mov    0x2dfa(%rip),%rdi        # 3fe0 <_ZSt3cin@GLIBCXX_3.4>
    11e6:	48 8d 75 f4          	lea    -0xc(%rbp),%rsi
    11ea:	e8 41 fe ff ff       	call   1030 <_ZNSirsERi@plt>
    11ef:	c7 45 fc 02 00 00 00 	movl   $0x2,-0x4(%rbp)
    11f6:	c7 45 f8 01 00 00 00 	movl   $0x1,-0x8(%rbp)
    11fd:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1200:	3b 45 f4             	cmp    -0xc(%rbp),%eax
    1203:	7f 15                	jg     121a <main+0x4a>
    1205:	8b 45 f8             	mov    -0x8(%rbp),%eax
    1208:	0f af 45 fc          	imul   -0x4(%rbp),%eax
    120c:	89 45 f8             	mov    %eax,-0x8(%rbp)
    120f:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1212:	83 c0 01             	add    $0x1,%eax
    1215:	89 45 fc             	mov    %eax,-0x4(%rbp)
    1218:	eb e3                	jmp    11fd <main+0x2d>
    121a:	8b 75 f8             	mov    -0x8(%rbp),%esi
    121d:	48 8b 3d ac 2d 00 00 	mov    0x2dac(%rip),%rdi        # 3fd0 <_ZSt4cout@GLIBCXX_3.4>
    1224:	e8 47 fe ff ff       	call   1070 <_ZNSolsEi@plt>
    1229:	48 8b 35 90 2d 00 00 	mov    0x2d90(%rip),%rsi        # 3fc0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    1230:	48 89 c7             	mov    %rax,%rdi
    1233:	e8 18 fe ff ff       	call   1050 <_ZNSolsEPFRSoS_E@plt>
    1238:	31 c0                	xor    %eax,%eax
    123a:	48 83 c4 10          	add    $0x10,%rsp
    123e:	5d                   	pop    %rbp
    123f:	c3                   	ret    

Disassembly of section .fini:

0000000000001240 <_fini>:
    1240:	f3 0f 1e fa          	endbr64 
    1244:	48 83 ec 08          	sub    $0x8,%rsp
    1248:	48 83 c4 08          	add    $0x8,%rsp
    124c:	c3                   	ret    
