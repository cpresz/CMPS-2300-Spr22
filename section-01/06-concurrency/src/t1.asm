t1:
(__TEXT,__text) section
_GetTime:
0000000100003a60	pushq	%rbp
0000000100003a61	movq	%rsp, %rbp
0000000100003a64	subq	$0x20, %rsp
0000000100003a68	xorl	%eax, %eax
0000000100003a6a	movl	%eax, %esi
0000000100003a6c	leaq	-0x10(%rbp), %rdi
0000000100003a70	callq	0x100003dcc
0000000100003a75	movl	%eax, -0x14(%rbp)
0000000100003a78	cmpl	$0x0, -0x14(%rbp)
0000000100003a7c	sete	%cl
0000000100003a7f	xorb	$-0x1, %cl
0000000100003a82	andb	$0x1, %cl
0000000100003a85	movzbl	%cl, %eax
0000000100003a88	movslq	%eax, %rdx
0000000100003a8b	cmpq	$0x0, %rdx
0000000100003a8f	je	0x100003ab4
0000000100003a95	leaq	0x3b4(%rip), %rdi
0000000100003a9c	leaq	0x3b5(%rip), %rsi
0000000100003aa3	leaq	0x3b9(%rip), %rcx
0000000100003aaa	movl	$0xb, %edx
0000000100003aaf	callq	0x100003db4
0000000100003ab4	jmp	0x100003ab9
0000000100003ab9	movsd	0x387(%rip), %xmm0      ## xmm0 = mem[0],zero
0000000100003ac1	cvtsi2sdq	-0x10(%rbp), %xmm1
0000000100003ac7	cvtsi2sdl	-0x8(%rbp), %xmm2
0000000100003acc	divsd	%xmm0, %xmm2
0000000100003ad0	addsd	%xmm2, %xmm1
0000000100003ad4	movaps	%xmm1, %xmm0
0000000100003ad7	addq	$0x20, %rsp
0000000100003adb	popq	%rbp
0000000100003adc	retq
0000000100003add	nopl	(%rax)
_Spin:
0000000100003ae0	pushq	%rbp
0000000100003ae1	movq	%rsp, %rbp
0000000100003ae4	subq	$0x10, %rsp
0000000100003ae8	movl	%edi, -0x4(%rbp)
0000000100003aeb	callq	0x100003a60
0000000100003af0	movsd	%xmm0, -0x10(%rbp)
0000000100003af5	callq	0x100003a60
0000000100003afa	subsd	-0x10(%rbp), %xmm0
0000000100003aff	cvtsi2sdl	-0x4(%rbp), %xmm1
0000000100003b04	ucomisd	%xmm0, %xmm1
0000000100003b08	jbe	0x100003b13
0000000100003b0e	jmp	0x100003af5
0000000100003b13	addq	$0x10, %rsp
0000000100003b17	popq	%rbp
0000000100003b18	retq
0000000100003b19	nopl	(%rax)
_mythread:
0000000100003b20	pushq	%rbp
0000000100003b21	movq	%rsp, %rbp
0000000100003b24	subq	$0x20, %rsp
0000000100003b28	movq	%rdi, -0x8(%rbp)
0000000100003b2c	movq	-0x8(%rbp), %rax
0000000100003b30	movq	%rax, -0x10(%rbp)
0000000100003b34	movq	-0x10(%rbp), %rsi
0000000100003b38	leaq	0x32c(%rip), %rdi
0000000100003b3f	leaq	-0x14(%rbp), %rdx
0000000100003b43	movb	$0x0, %al
0000000100003b45	callq	0x100003dd2
0000000100003b4a	movl	$0x0, -0x14(%rbp)
0000000100003b51	leaq	0x44f4(%rip), %rax
0000000100003b58	movl	-0x14(%rbp), %ecx
0000000100003b5b	cmpl	(%rax), %ecx
0000000100003b5d	jge	0x100003b80
0000000100003b63	movl	0x44df(%rip), %eax
0000000100003b69	addl	$0x1, %eax
0000000100003b6c	movl	%eax, 0x44d6(%rip)
0000000100003b72	movl	-0x14(%rbp), %eax
0000000100003b75	addl	$0x1, %eax
0000000100003b78	movl	%eax, -0x14(%rbp)
0000000100003b7b	jmp	0x100003b51
0000000100003b80	movq	-0x10(%rbp), %rsi
0000000100003b84	leaq	0x2fb(%rip), %rdi
0000000100003b8b	movb	$0x0, %al
0000000100003b8d	callq	0x100003dd2
0000000100003b92	xorl	%ecx, %ecx
0000000100003b94	movl	%ecx, %edx
0000000100003b96	movl	%eax, -0x18(%rbp)
0000000100003b99	movq	%rdx, %rax
0000000100003b9c	addq	$0x20, %rsp
0000000100003ba0	popq	%rbp
0000000100003ba1	retq
0000000100003ba2	nopw	%cs:(%rax,%rax)
0000000100003bac	nopl	(%rax)
_main:
0000000100003bb0	pushq	%rbp
0000000100003bb1	movq	%rsp, %rbp
0000000100003bb4	subq	$0x30, %rsp
0000000100003bb8	movl	$0x0, -0x4(%rbp)
0000000100003bbf	movl	%edi, -0x8(%rbp)
0000000100003bc2	movq	%rsi, -0x10(%rbp)
0000000100003bc6	cmpl	$0x2, -0x8(%rbp)
0000000100003bca	je	0x100003bf7
0000000100003bd0	movq	0x429(%rip), %rax
0000000100003bd7	movq	(%rax), %rdi
0000000100003bda	leaq	0x2af(%rip), %rsi
0000000100003be1	xorl	%ecx, %ecx
0000000100003be3	movb	%cl, %al
0000000100003be5	callq	0x100003dc6
0000000100003bea	movl	$0x1, %edi
0000000100003bef	movl	%eax, -0x24(%rbp)
0000000100003bf2	callq	0x100003dc0
0000000100003bf7	movq	-0x10(%rbp), %rax
0000000100003bfb	movq	0x8(%rax), %rdi
0000000100003bff	callq	0x100003dba
0000000100003c04	leaq	0x443d(%rip), %rcx
0000000100003c0b	leaq	0x443a(%rip), %rdx
0000000100003c12	movl	%eax, (%rdx)
0000000100003c14	movl	0x442e(%rip), %esi
0000000100003c1a	leaq	0x28e(%rip), %rdi
0000000100003c21	movl	%ecx, %edx
0000000100003c23	movb	$0x0, %al
0000000100003c25	callq	0x100003dd2
0000000100003c2a	xorl	%ecx, %ecx
0000000100003c2c	movl	%ecx, %esi
0000000100003c2e	leaq	-0x18(%rbp), %rdi
0000000100003c32	leaq	-0x119(%rip), %rdx
0000000100003c39	leaq	0x290(%rip), %rcx
0000000100003c40	movl	%eax, -0x28(%rbp)
0000000100003c43	callq	0x100003dd8
0000000100003c48	cmpl	$0x0, %eax
0000000100003c4b	sete	%r8b
0000000100003c4f	xorb	$-0x1, %r8b
0000000100003c53	andb	$0x1, %r8b
0000000100003c57	movzbl	%r8b, %eax
0000000100003c5b	movslq	%eax, %rcx
0000000100003c5e	cmpq	$0x0, %rcx
0000000100003c62	je	0x100003c87
0000000100003c68	leaq	0x263(%rip), %rdi
0000000100003c6f	leaq	0x261(%rip), %rsi
0000000100003c76	leaq	0x25f(%rip), %rcx
0000000100003c7d	movl	$0x20, %edx
0000000100003c82	callq	0x100003db4
0000000100003c87	jmp	0x100003c8c
0000000100003c8c	xorl	%eax, %eax
0000000100003c8e	movl	%eax, %esi
0000000100003c90	leaq	-0x20(%rbp), %rdi
0000000100003c94	leaq	-0x17b(%rip), %rdx
0000000100003c9b	leaq	0x26f(%rip), %rcx
0000000100003ca2	callq	0x100003dd8
0000000100003ca7	cmpl	$0x0, %eax
0000000100003caa	sete	%r8b
0000000100003cae	xorb	$-0x1, %r8b
0000000100003cb2	andb	$0x1, %r8b
0000000100003cb6	movzbl	%r8b, %eax
0000000100003cba	movslq	%eax, %rcx
0000000100003cbd	cmpq	$0x0, %rcx
0000000100003cc1	je	0x100003ce6
0000000100003cc7	leaq	0x204(%rip), %rdi
0000000100003cce	leaq	0x202(%rip), %rsi
0000000100003cd5	leaq	0x237(%rip), %rcx
0000000100003cdc	movl	$0x21, %edx
0000000100003ce1	callq	0x100003db4
0000000100003ce6	jmp	0x100003ceb
0000000100003ceb	xorl	%eax, %eax
0000000100003ced	movl	%eax, %esi
0000000100003cef	movq	-0x18(%rbp), %rdi
0000000100003cf3	callq	0x100003dde
0000000100003cf8	cmpl	$0x0, %eax
0000000100003cfb	sete	%cl
0000000100003cfe	xorb	$-0x1, %cl
0000000100003d01	andb	$0x1, %cl
0000000100003d04	movzbl	%cl, %eax
0000000100003d07	movslq	%eax, %rdx
0000000100003d0a	cmpq	$0x0, %rdx
0000000100003d0e	je	0x100003d33
0000000100003d14	leaq	0x1b7(%rip), %rdi
0000000100003d1b	leaq	0x1b5(%rip), %rsi
0000000100003d22	leaq	0x21f(%rip), %rcx
0000000100003d29	movl	$0x23, %edx
0000000100003d2e	callq	0x100003db4
0000000100003d33	jmp	0x100003d38
0000000100003d38	xorl	%eax, %eax
0000000100003d3a	movl	%eax, %esi
0000000100003d3c	movq	-0x20(%rbp), %rdi
0000000100003d40	callq	0x100003dde
0000000100003d45	cmpl	$0x0, %eax
0000000100003d48	sete	%cl
0000000100003d4b	xorb	$-0x1, %cl
0000000100003d4e	andb	$0x1, %cl
0000000100003d51	movzbl	%cl, %eax
0000000100003d54	movslq	%eax, %rdx
0000000100003d57	cmpq	$0x0, %rdx
0000000100003d5b	je	0x100003d80
0000000100003d61	leaq	0x16a(%rip), %rdi
0000000100003d68	leaq	0x168(%rip), %rsi
0000000100003d6f	leaq	0x1f5(%rip), %rcx
0000000100003d76	movl	$0x24, %edx
0000000100003d7b	callq	0x100003db4
0000000100003d80	jmp	0x100003d85
0000000100003d85	leaq	0x42c0(%rip), %rax
0000000100003d8c	movl	0x42b6(%rip), %esi
0000000100003d92	movl	(%rax), %ecx
0000000100003d94	shll	$0x1, %ecx
0000000100003d97	leaq	0x1f0(%rip), %rdi
0000000100003d9e	movl	%ecx, %edx
0000000100003da0	movb	$0x0, %al
0000000100003da2	callq	0x100003dd2
0000000100003da7	xorl	%ecx, %ecx
0000000100003da9	movl	%eax, -0x2c(%rbp)
0000000100003dac	movl	%ecx, %eax
0000000100003dae	addq	$0x30, %rsp
0000000100003db2	popq	%rbp
0000000100003db3	retq
