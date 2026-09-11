	.file	"main.c"
	.text
	.p2align 4
	.globl	mat_mul_c
	.type	mat_mul_c, @function
mat_mul_c:
.LFB52:
	.cfi_startproc
	endbr64
	testl	%edi, %edi
	je	.L12
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movl	%edi, %r9d
	movq	%rsi, %r11
	movl	%edi, %r10d
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	xorl	%r14d, %r14d
	movq	%rcx, %r13
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	xorl	%r12d, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rdx, %rbx
	.p2align 4,,10
	.p2align 3
.L3:
	xorl	%ebp, %ebp
	.p2align 4,,10
	.p2align 3
.L6:
	leal	(%r12,%rbp), %eax
	movl	%ebp, %esi
	leaq	0(%r13,%rax,4), %r8
	movl	%r12d, %eax
	movl	(%r8), %ecx
	.p2align 4,,10
	.p2align 3
.L4:
	movl	%eax, %edx
	movl	%esi, %edi
	addl	$1, %eax
	addl	%r9d, %esi
	movl	(%r11,%rdx,4), %edx
	imull	(%rbx,%rdi,4), %edx
	addl	%edx, %ecx
	movl	%ecx, (%r8)
	cmpl	%eax, %r10d
	jne	.L4
	addl	$1, %ebp
	cmpl	%r9d, %ebp
	jne	.L6
	addl	$1, %r14d
	addl	%r9d, %r12d
	addl	%r9d, %r10d
	cmpl	%r9d, %r14d
	jne	.L3
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L12:
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	ret
	.cfi_endproc
.LFE52:
	.size	mat_mul_c, .-mat_mul_c
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC15:
	.string	"w"
.LC16:
	.string	"benchmark.csv"
.LC17:
	.string	"run,total_ns,average_ns\n"
.LC22:
	.string	"Run %d: %.2f ns per call\n"
.LC23:
	.string	"%d,%.0f,%.2f\n"
.LC24:
	.string	"Force update %u\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB53:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	$400, %edi
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$104, %rsp
	.cfi_def_cfa_offset 160
	movq	%fs:40, %rax
	movq	%rax, 88(%rsp)
	xorl	%eax, %eax
	call	malloc@PLT
	movl	$400, %edi
	movq	%rax, %r15
	call	malloc@PLT
	movdqa	.LC3(%rip), %xmm1
	movdqa	.LC0(%rip), %xmm0
	leaq	.LC15(%rip), %rsi
	leaq	.LC16(%rip), %rdi
	movq	%rax, %r14
	leaq	400(%r15), %r12
	movups	%xmm1, 80(%r15)
	movups	%xmm1, 96(%r15)
	movdqa	.LC4(%rip), %xmm1
	movups	%xmm0, (%r15)
	movups	%xmm1, 112(%r15)
	movdqa	.LC5(%rip), %xmm1
	movups	%xmm0, 16(%r15)
	movdqa	.LC1(%rip), %xmm0
	movups	%xmm1, 128(%r15)
	movups	%xmm1, 144(%r15)
	movdqa	.LC6(%rip), %xmm1
	movups	%xmm0, 32(%r15)
	movdqa	.LC2(%rip), %xmm0
	movups	%xmm1, 160(%r15)
	movups	%xmm1, 176(%r15)
	movdqa	.LC7(%rip), %xmm1
	movups	%xmm0, 48(%r15)
	movups	%xmm1, 192(%r15)
	movdqa	.LC8(%rip), %xmm1
	movups	%xmm0, 64(%r15)
	pxor	%xmm0, %xmm0
	movups	%xmm0, (%rax)
	movups	%xmm0, 16(%rax)
	movups	%xmm0, 32(%rax)
	movups	%xmm0, 48(%rax)
	movups	%xmm0, 64(%rax)
	movups	%xmm0, 80(%rax)
	movups	%xmm0, 96(%rax)
	movups	%xmm0, 112(%rax)
	movups	%xmm0, 128(%rax)
	movups	%xmm0, 144(%rax)
	movups	%xmm1, 208(%r15)
	movups	%xmm1, 224(%r15)
	movdqa	.LC9(%rip), %xmm1
	movups	%xmm0, 160(%rax)
	movups	%xmm1, 240(%r15)
	movups	%xmm1, 256(%r15)
	movdqa	.LC10(%rip), %xmm1
	movups	%xmm0, 176(%rax)
	movups	%xmm1, 272(%r15)
	movdqa	.LC11(%rip), %xmm1
	movups	%xmm0, 192(%rax)
	movups	%xmm1, 288(%r15)
	movups	%xmm1, 304(%r15)
	movdqa	.LC12(%rip), %xmm1
	movups	%xmm0, 208(%rax)
	movups	%xmm1, 320(%r15)
	movups	%xmm1, 336(%r15)
	movdqa	.LC13(%rip), %xmm1
	movups	%xmm0, 224(%rax)
	movups	%xmm1, 352(%r15)
	movdqa	.LC14(%rip), %xmm1
	movups	%xmm0, 240(%rax)
	movups	%xmm0, 256(%rax)
	movups	%xmm0, 272(%rax)
	movups	%xmm0, 288(%rax)
	movups	%xmm0, 304(%rax)
	movups	%xmm1, 368(%r15)
	movups	%xmm1, 384(%r15)
	movups	%xmm0, 320(%rax)
	movups	%xmm0, 336(%rax)
	movups	%xmm0, 352(%rax)
	movups	%xmm0, 368(%rax)
	movups	%xmm0, 384(%rax)
	call	fopen@PLT
	movl	$24, %edx
	movl	$1, %esi
	leaq	.LC17(%rip), %rdi
	movq	%rax, %rcx
	movq	%rax, %rbx
	call	fwrite@PLT
	movdqa	.LC18(%rip), %xmm2
	movl	$1000, %edx
	movdqa	.LC19(%rip), %xmm3
	movdqa	%xmm2, %xmm6
	movdqa	%xmm3, %xmm5
	psrlq	$32, %xmm6
	psrlq	$32, %xmm5
.L17:
	movq	%r14, %rsi
	movq	%r15, %rcx
.L18:
	movl	4(%rcx), %r9d
	movl	12(%rcx), %r10d
	addq	$40, %rcx
	movl	-20(%rcx), %edi
	movl	-12(%rcx), %r8d
	movd	%r9d, %xmm4
	movl	-32(%rcx), %r13d
	movl	-40(%rcx), %ebp
	pshufd	$0, %xmm4, %xmm12
	movd	%r10d, %xmm4
	movl	-16(%rcx), %r11d
	movdqu	(%rsi), %xmm15
	pshufd	$0, %xmm4, %xmm8
	movd	%edi, %xmm4
	leal	0(%rbp,%r9), %eax
	pshufd	$0, %xmm4, %xmm11
	movd	%r8d, %xmm4
	paddd	%xmm12, %xmm8
	addl	%r13d, %eax
	pshufd	$0, %xmm4, %xmm7
	movd	%r13d, %xmm4
	addl	%r10d, %eax
	addl	-24(%rcx), %eax
	pshufd	$0, %xmm4, %xmm0
	movd	%ebp, %xmm4
	paddd	%xmm11, %xmm7
	addl	%edi, %eax
	pshufd	$0, %xmm4, %xmm1
	movd	%r11d, %xmm4
	paddd	%xmm7, %xmm8
	addl	%r11d, %eax
	paddd	%xmm1, %xmm0
	pshufd	$0, %xmm4, %xmm1
	movd	-24(%rcx), %xmm4
	addl	%r8d, %eax
	movdqa	%xmm8, %xmm7
	movdqa	%xmm8, %xmm11
	addl	-8(%rcx), %eax
	addl	-4(%rcx), %eax
	pshufd	$0, %xmm4, %xmm4
	psrlq	$32, %xmm7
	leal	(%rax,%rax,8), %edi
	addl	%edi, 32(%rsi)
	paddd	%xmm4, %xmm1
	movd	-8(%rcx), %xmm4
	movdqa	%xmm7, %xmm12
	leal	(%rax,%rax,4), %eax
	pmuludq	%xmm2, %xmm11
	pmuludq	%xmm6, %xmm12
	paddd	%xmm1, %xmm0
	addl	%eax, %eax
	pshufd	$0, %xmm4, %xmm1
	movd	-4(%rcx), %xmm4
	addl	%eax, 36(%rsi)
	addq	$40, %rsi
	paddd	%xmm1, %xmm0
	pshufd	$0, %xmm4, %xmm1
	movdqa	%xmm0, %xmm13
	movdqa	%xmm1, %xmm10
	pmuludq	%xmm2, %xmm13
	movdqa	%xmm1, %xmm4
	psrlq	$32, %xmm10
	pmuludq	%xmm2, %xmm4
	pshufd	$8, %xmm11, %xmm11
	movdqa	%xmm10, %xmm9
	pmuludq	%xmm3, %xmm1
	pshufd	$8, %xmm12, %xmm12
	pmuludq	%xmm6, %xmm9
	punpckldq	%xmm12, %xmm11
	pshufd	$8, %xmm13, %xmm13
	pshufd	$8, %xmm4, %xmm4
	pshufd	$8, %xmm1, %xmm1
	pshufd	$8, %xmm9, %xmm9
	punpckldq	%xmm9, %xmm4
	movdqa	%xmm0, %xmm9
	psrlq	$32, %xmm9
	pmuludq	%xmm3, %xmm0
	paddd	%xmm15, %xmm4
	movdqa	%xmm9, %xmm14
	pmuludq	%xmm6, %xmm14
	pshufd	$8, %xmm0, %xmm0
	pshufd	$8, %xmm14, %xmm14
	punpckldq	%xmm14, %xmm13
	paddd	%xmm13, %xmm4
	paddd	%xmm11, %xmm4
	movups	%xmm4, -40(%rsi)
	movdqa	%xmm10, %xmm4
	pmuludq	%xmm5, %xmm4
	pshufd	$8, %xmm4, %xmm4
	punpckldq	%xmm4, %xmm1
	movdqu	-24(%rsi), %xmm4
	paddd	%xmm4, %xmm1
	movdqa	%xmm9, %xmm4
	pmuludq	%xmm5, %xmm4
	pshufd	$8, %xmm4, %xmm4
	punpckldq	%xmm4, %xmm0
	movdqa	%xmm7, %xmm4
	paddd	%xmm1, %xmm0
	pmuludq	%xmm5, %xmm4
	movdqa	%xmm8, %xmm1
	pmuludq	%xmm3, %xmm1
	pshufd	$8, %xmm4, %xmm4
	pshufd	$8, %xmm1, %xmm1
	punpckldq	%xmm4, %xmm1
	paddd	%xmm1, %xmm0
	movups	%xmm0, -24(%rsi)
	cmpq	%rcx, %r12
	jne	.L18
	subl	$1, %edx
	jne	.L17
	leaq	64(%rsp), %rax
	movdqa	%xmm2, %xmm4
	leaq	48(%rsp), %r13
	xorl	%ebp, %ebp
	movq	%rax, 16(%rsp)
	psrlq	$32, %xmm4
.L19:
	movq	%r13, %rsi
	movl	$4, %edi
	movaps	%xmm4, (%rsp)
	call	clock_gettime@PLT
	movdqa	(%rsp), %xmm4
	movl	$10000, %esi
	movdqa	.LC19(%rip), %xmm3
	movdqa	.LC18(%rip), %xmm2
	movdqa	%xmm3, %xmm5
	psrlq	$32, %xmm5
.L20:
	movq	%r14, %rcx
	movq	%r15, %rdx
	.p2align 4,,10
	.p2align 3
.L21:
	movl	8(%rdx), %r11d
	movd	(%rdx), %xmm1
	addq	$40, %rdx
	movd	-24(%rdx), %xmm15
	movl	-20(%rdx), %edi
	movd	%r11d, %xmm0
	pshufd	$0, %xmm1, %xmm1
	movl	-36(%rdx), %r9d
	movl	-40(%rdx), %eax
	pshufd	$0, %xmm0, %xmm0
	movl	-28(%rdx), %r10d
	movl	-12(%rdx), %r8d
	movd	%edi, %xmm6
	paddd	%xmm1, %xmm0
	movd	-16(%rdx), %xmm1
	addl	%r9d, %eax
	pshufd	$0, %xmm15, %xmm8
	movd	%r9d, %xmm7
	pshufd	$0, %xmm6, %xmm11
	movd	%r8d, %xmm6
	movdqu	(%rcx), %xmm15
	pshufd	$0, %xmm1, %xmm1
	pshufd	$0, %xmm7, %xmm12
	movd	%r10d, %xmm7
	addl	%r11d, %eax
	paddd	%xmm8, %xmm1
	pshufd	$0, %xmm7, %xmm7
	pshufd	$0, %xmm6, %xmm6
	addl	%r10d, %eax
	paddd	%xmm1, %xmm0
	movd	-8(%rdx), %xmm1
	paddd	%xmm11, %xmm6
	addl	-24(%rdx), %eax
	paddd	%xmm12, %xmm7
	addl	%edi, %eax
	addl	-16(%rdx), %eax
	pshufd	$0, %xmm1, %xmm1
	paddd	%xmm6, %xmm7
	addl	%r8d, %eax
	addl	-8(%rdx), %eax
	paddd	%xmm1, %xmm0
	movd	-4(%rdx), %xmm1
	movdqa	%xmm7, %xmm6
	addl	-4(%rdx), %eax
	movdqa	%xmm0, %xmm13
	psrlq	$32, %xmm6
	movdqa	%xmm7, %xmm11
	pshufd	$0, %xmm1, %xmm1
	movdqa	%xmm6, %xmm12
	leal	(%rax,%rax,8), %edi
	addl	%edi, 32(%rcx)
	movdqa	%xmm1, %xmm10
	movdqa	%xmm1, %xmm8
	leal	(%rax,%rax,4), %eax
	psrlq	$32, %xmm10
	pmuludq	%xmm2, %xmm8
	addl	%eax, %eax
	addl	%eax, 36(%rcx)
	movdqa	%xmm10, %xmm9
	pmuludq	%xmm2, %xmm13
	addq	$40, %rcx
	pmuludq	%xmm4, %xmm9
	pmuludq	%xmm2, %xmm11
	pmuludq	%xmm4, %xmm12
	pmuludq	%xmm3, %xmm1
	pmuludq	%xmm5, %xmm10
	pmuludq	%xmm5, %xmm6
	pshufd	$8, %xmm8, %xmm8
	pshufd	$8, %xmm13, %xmm13
	pshufd	$8, %xmm9, %xmm9
	pshufd	$8, %xmm11, %xmm11
	punpckldq	%xmm9, %xmm8
	movdqa	%xmm0, %xmm9
	pshufd	$8, %xmm12, %xmm12
	psrlq	$32, %xmm9
	pmuludq	%xmm3, %xmm0
	paddd	%xmm15, %xmm8
	movdqu	-24(%rcx), %xmm15
	movdqa	%xmm9, %xmm14
	pmuludq	%xmm5, %xmm9
	punpckldq	%xmm12, %xmm11
	pmuludq	%xmm4, %xmm14
	pshufd	$8, %xmm1, %xmm1
	pshufd	$8, %xmm6, %xmm6
	pshufd	$8, %xmm0, %xmm0
	pshufd	$8, %xmm14, %xmm14
	punpckldq	%xmm14, %xmm13
	paddd	%xmm13, %xmm8
	paddd	%xmm11, %xmm8
	movups	%xmm8, -40(%rcx)
	pshufd	$8, %xmm10, %xmm8
	punpckldq	%xmm8, %xmm1
	pshufd	$8, %xmm9, %xmm8
	paddd	%xmm15, %xmm1
	punpckldq	%xmm8, %xmm0
	paddd	%xmm1, %xmm0
	movdqa	%xmm7, %xmm1
	pmuludq	%xmm3, %xmm1
	pshufd	$8, %xmm1, %xmm1
	punpckldq	%xmm6, %xmm1
	paddd	%xmm1, %xmm0
	movups	%xmm0, -24(%rcx)
	cmpq	%rdx, %r12
	jne	.L21
	subl	$1, %esi
	jne	.L20
	movq	16(%rsp), %rsi
	movl	$4, %edi
	movaps	%xmm4, 32(%rsp)
	addl	$1, %ebp
	call	clock_gettime@PLT
	movq	64(%rsp), %rax
	pxor	%xmm5, %xmm5
	movl	%ebp, %edx
	subq	48(%rsp), %rax
	pxor	%xmm0, %xmm0
	movsd	.LC21(%rip), %xmm1
	leaq	.LC22(%rip), %rsi
	cvtsi2sdq	%rax, %xmm5
	movq	72(%rsp), %rax
	subq	56(%rsp), %rax
	movl	$2, %edi
	mulsd	.LC20(%rip), %xmm5
	cvtsi2sdq	%rax, %xmm0
	movl	$1, %eax
	addsd	%xmm0, %xmm5
	mulsd	%xmm5, %xmm1
	movsd	%xmm5, 24(%rsp)
	movapd	%xmm1, %xmm0
	movsd	%xmm1, (%rsp)
	call	__printf_chk@PLT
	movsd	24(%rsp), %xmm5
	movl	%ebp, %ecx
	movq	%rbx, %rdi
	movsd	(%rsp), %xmm1
	movl	$2, %esi
	movl	$2, %eax
	leaq	.LC23(%rip), %rdx
	movapd	%xmm5, %xmm0
	call	__fprintf_chk@PLT
	movl	$1, %edi
	call	sleep@PLT
	cmpl	$10, %ebp
	movdqa	32(%rsp), %xmm4
	jne	.L19
	movl	(%r14), %edx
	leaq	.LC24(%rip), %rsi
	movl	$2, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movq	%rbx, %rdi
	call	fclose@PLT
	movq	%r15, %rdi
	call	free@PLT
	movq	%r14, %rdi
	call	free@PLT
	movq	88(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L29
	addq	$104, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L29:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE53:
	.size	main, .-main
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC0:
	.long	1
	.long	1
	.long	1
	.long	1
	.align 16
.LC1:
	.long	1
	.long	1
	.long	2
	.long	2
	.align 16
.LC2:
	.long	2
	.long	2
	.long	2
	.long	2
	.align 16
.LC3:
	.long	3
	.long	3
	.long	3
	.long	3
	.align 16
.LC4:
	.long	3
	.long	3
	.long	4
	.long	4
	.align 16
.LC5:
	.long	4
	.long	4
	.long	4
	.long	4
	.align 16
.LC6:
	.long	5
	.long	5
	.long	5
	.long	5
	.align 16
.LC7:
	.long	5
	.long	5
	.long	6
	.long	6
	.align 16
.LC8:
	.long	6
	.long	6
	.long	6
	.long	6
	.align 16
.LC9:
	.long	7
	.long	7
	.long	7
	.long	7
	.align 16
.LC10:
	.long	7
	.long	7
	.long	8
	.long	8
	.align 16
.LC11:
	.long	8
	.long	8
	.long	8
	.long	8
	.align 16
.LC12:
	.long	9
	.long	9
	.long	9
	.long	9
	.align 16
.LC13:
	.long	9
	.long	9
	.long	10
	.long	10
	.align 16
.LC14:
	.long	10
	.long	10
	.long	10
	.long	10
	.align 16
.LC18:
	.long	1
	.long	2
	.long	3
	.long	4
	.align 16
.LC19:
	.long	5
	.long	6
	.long	7
	.long	8
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC20:
	.long	0
	.long	1104006501
	.align 8
.LC21:
	.long	-350469331
	.long	1058682594
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
