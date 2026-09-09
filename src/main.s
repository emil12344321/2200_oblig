	.file	"main.c"
	.text
.Ltext0:
	.file 0 "/src" "main.c"
	.globl	mat_mul_c
	.type	mat_mul_c, @function
mat_mul_c:
.LFB6:
	.file 1 "main.c"
	.loc 1 10 55
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
.LBB2:
	.loc 1 11 10
	movl	$0, -12(%rbp)
	.loc 1 11 2
	jmp	.L2
.L7:
.LBB3:
	.loc 1 12 11
	movl	$0, -8(%rbp)
	.loc 1 12 3
	jmp	.L3
.L6:
.LBB4:
	.loc 1 13 12
	movl	$0, -4(%rbp)
	.loc 1 13 4
	jmp	.L4
.L5:
	.loc 1 14 6
	movl	-12(%rbp), %eax
	imull	-20(%rbp), %eax
	movl	%eax, %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %ecx
	.loc 1 14 28
	movl	-12(%rbp), %eax
	imull	-20(%rbp), %eax
	movl	%eax, %edx
	.loc 1 14 31
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, %eax
	.loc 1 14 23
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	.loc 1 14 44
	movl	-4(%rbp), %eax
	imull	-20(%rbp), %eax
	movl	%eax, %esi
	.loc 1 14 47
	movl	-8(%rbp), %eax
	addl	%esi, %eax
	movl	%eax, %eax
	.loc 1 14 39
	leaq	0(,%rax,4), %rsi
	movq	-40(%rbp), %rax
	addq	%rsi, %rax
	movl	(%rax), %eax
	.loc 1 14 36
	imull	%eax, %edx
	.loc 1 14 6
	movl	-12(%rbp), %eax
	imull	-20(%rbp), %eax
	movl	%eax, %esi
	movl	-8(%rbp), %eax
	addl	%esi, %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rsi
	movq	-48(%rbp), %rax
	addq	%rsi, %rax
	.loc 1 14 19
	addl	%ecx, %edx
	movl	%edx, (%rax)
	.loc 1 13 30 discriminator 3
	addl	$1, -4(%rbp)
.L4:
	.loc 1 13 21 discriminator 1
	movl	-4(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jb	.L5
.LBE4:
	.loc 1 12 29 discriminator 2
	addl	$1, -8(%rbp)
.L3:
	.loc 1 12 20 discriminator 1
	movl	-8(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jb	.L6
.LBE3:
	.loc 1 11 28 discriminator 2
	addl	$1, -12(%rbp)
.L2:
	.loc 1 11 19 discriminator 1
	movl	-12(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jb	.L7
.LBE2:
	.loc 1 18 1
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	mat_mul_c, .-mat_mul_c
	.section	.rodata
.LC0:
	.string	"%d "
	.text
	.globl	main
	.type	main, @function
main:
.LFB7:
	.loc 1 20 33
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	%edi, -68(%rbp)
	movq	%rsi, -80(%rbp)
	.loc 1 22 7
	movl	$10, -44(%rbp)
	.loc 1 23 23
	movl	-44(%rbp), %eax
	imull	%eax, %eax
	movl	%eax, %eax
	.loc 1 23 12
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -40(%rbp)
	.loc 1 24 23
	movl	-44(%rbp), %eax
	imull	%eax, %eax
	movl	%eax, %eax
	.loc 1 24 12
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -32(%rbp)
	.loc 1 25 23
	movl	-44(%rbp), %eax
	imull	%eax, %eax
	movl	%eax, %eax
	.loc 1 25 12
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -24(%rbp)
.LBB5:
	.loc 1 26 10
	movl	$0, -60(%rbp)
	.loc 1 26 2
	jmp	.L9
.L12:
.LBB6:
	.loc 1 27 11
	movl	$0, -56(%rbp)
	.loc 1 27 3
	jmp	.L10
.L11:
	.loc 1 28 22
	movl	-60(%rbp), %eax
	leal	1(%rax), %ecx
	.loc 1 28 11
	movl	-60(%rbp), %eax
	imull	-44(%rbp), %eax
	movl	%eax, %edx
	.loc 1 28 14
	movl	-56(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, %eax
	.loc 1 28 6
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 28 22
	movl	%ecx, %edx
	.loc 1 28 19
	movl	%edx, (%rax)
	.loc 1 29 22
	movl	-56(%rbp), %eax
	leal	1(%rax), %ecx
	.loc 1 29 11
	movl	-60(%rbp), %eax
	imull	-44(%rbp), %eax
	movl	%eax, %edx
	.loc 1 29 14
	movl	-56(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, %eax
	.loc 1 29 6
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 29 22
	movl	%ecx, %edx
	.loc 1 29 19
	movl	%edx, (%rax)
	.loc 1 30 11
	movl	-60(%rbp), %eax
	imull	-44(%rbp), %eax
	movl	%eax, %edx
	.loc 1 30 14
	movl	-56(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, %eax
	.loc 1 30 6
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 30 19
	movl	$0, (%rax)
	.loc 1 27 29 discriminator 3
	addl	$1, -56(%rbp)
.L10:
	.loc 1 27 20 discriminator 1
	movl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jb	.L11
.LBE6:
	.loc 1 26 28 discriminator 2
	addl	$1, -60(%rbp)
.L9:
	.loc 1 26 19 discriminator 1
	movl	-60(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jb	.L12
.LBE5:
	.loc 1 35 18
	call	clock@PLT
	movq	%rax, -16(%rbp)
	.loc 1 36 2
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	mat_mul_asm@PLT
	.loc 1 37 16
	call	clock@PLT
	movq	%rax, -8(%rbp)
.LBB7:
	.loc 1 44 12
	movl	$0, -52(%rbp)
	.loc 1 44 2
	jmp	.L13
.L16:
.LBB8:
	.loc 1 45 13
	movl	$0, -48(%rbp)
	.loc 1 45 3
	jmp	.L14
.L15:
	.loc 1 46 24
	movl	-44(%rbp), %eax
	imull	-52(%rbp), %eax
	movl	%eax, %edx
	.loc 1 46 27
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, %eax
	.loc 1 46 19
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 46 4
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 45 31 discriminator 3
	addl	$1, -48(%rbp)
.L14:
	.loc 1 45 22 discriminator 1
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jb	.L15
.LBE8:
	.loc 1 48 3
	movl	$10, %edi
	call	putchar@PLT
	.loc 1 44 30 discriminator 2
	addl	$1, -52(%rbp)
.L13:
	.loc 1 44 21 discriminator 1
	movl	-52(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jb	.L16
.LBE7:
	movl	$0, %eax
	.loc 1 50 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
.Letext0:
	.file 2 "/usr/lib/gcc-cross/x86_64-linux-gnu/13/include/stddef.h"
	.file 3 "/usr/x86_64-linux-gnu/include/bits/types.h"
	.file 4 "/usr/x86_64-linux-gnu/include/bits/types/clock_t.h"
	.file 5 "/usr/x86_64-linux-gnu/include/sys/types.h"
	.file 6 "/usr/x86_64-linux-gnu/include/stdio.h"
	.file 7 "/usr/x86_64-linux-gnu/include/stdlib.h"
	.file 8 "/usr/x86_64-linux-gnu/include/time.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2d1
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0xb
	.long	.LASF22
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x5
	.long	.LASF9
	.byte	0x2
	.byte	0xd6
	.byte	0x17
	.long	0x3a
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0xc
	.byte	0x8
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0xd
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x5
	.long	.LASF10
	.byte	0x3
	.byte	0x9c
	.byte	0x1b
	.long	0x6d
	.uleb128 0x6
	.long	0x85
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0xe
	.long	0x85
	.uleb128 0x6
	.long	0x8c
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF12
	.uleb128 0x5
	.long	.LASF13
	.byte	0x4
	.byte	0x7
	.byte	0x13
	.long	0x74
	.uleb128 0x5
	.long	.LASF14
	.byte	0x5
	.byte	0x96
	.byte	0x16
	.long	0x41
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF15
	.uleb128 0x9
	.long	.LASF16
	.byte	0x6
	.value	0x16b
	.byte	0xc
	.long	0x66
	.long	0xd4
	.uleb128 0x3
	.long	0x91
	.uleb128 0xf
	.byte	0
	.uleb128 0x10
	.long	.LASF23
	.byte	0x1
	.byte	0x7
	.byte	0xd
	.long	0xf5
	.uleb128 0x3
	.long	0xa9
	.uleb128 0x3
	.long	0xf5
	.uleb128 0x3
	.long	0xf5
	.uleb128 0x3
	.long	0xf5
	.byte	0
	.uleb128 0x6
	.long	0xa9
	.uleb128 0x11
	.long	.LASF24
	.byte	0x8
	.byte	0x48
	.byte	0x10
	.long	0x9d
	.uleb128 0x9
	.long	.LASF17
	.byte	0x7
	.value	0x2a0
	.byte	0xe
	.long	0x48
	.long	0x11d
	.uleb128 0x3
	.long	0x2e
	.byte	0
	.uleb128 0x12
	.long	.LASF25
	.byte	0x1
	.byte	0x14
	.byte	0x5
	.long	0x66
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x22b
	.uleb128 0x7
	.long	.LASF18
	.byte	0x14
	.byte	0xe
	.long	0x66
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x7
	.long	.LASF19
	.byte	0x14
	.byte	0x1b
	.long	0x22b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0xa
	.long	.LASF20
	.byte	0x16
	.byte	0x7
	.long	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.string	"a"
	.byte	0x17
	.byte	0x8
	.long	0xf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.string	"b"
	.byte	0x18
	.byte	0x8
	.long	0xf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.string	"c"
	.byte	0x19
	.byte	0x8
	.long	0xf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.long	.LASF21
	.byte	0x23
	.byte	0xa
	.long	0x9d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.string	"end"
	.byte	0x25
	.byte	0xa
	.long	0x9d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x1ed
	.uleb128 0x1
	.string	"i"
	.byte	0x1a
	.byte	0xa
	.long	0x66
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x4
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x1
	.string	"j"
	.byte	0x1b
	.byte	0xb
	.long	0x66
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.uleb128 0x4
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x1
	.string	"i"
	.byte	0x2c
	.byte	0xc
	.long	0xa9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x4
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x1
	.string	"j"
	.byte	0x2d
	.byte	0xd
	.long	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.long	0x80
	.uleb128 0x14
	.long	.LASF26
	.byte	0x1
	.byte	0xa
	.byte	0x6
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.long	.LASF20
	.byte	0xa
	.byte	0x15
	.long	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"a"
	.byte	0x21
	.long	0xf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x8
	.string	"b"
	.byte	0x2a
	.long	0xf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x8
	.string	"c"
	.byte	0x34
	.long	0xf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x4
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x1
	.string	"i"
	.byte	0xb
	.byte	0xa
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x1
	.string	"j"
	.byte	0xc
	.byte	0xb
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x1
	.string	"k"
	.byte	0xd
	.byte	0xc
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 10
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF9:
	.string	"size_t"
.LASF21:
	.string	"start"
.LASF13:
	.string	"clock_t"
.LASF20:
	.string	"size"
.LASF24:
	.string	"clock"
.LASF2:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF4:
	.string	"unsigned char"
.LASF23:
	.string	"mat_mul_asm"
.LASF25:
	.string	"main"
.LASF14:
	.string	"uint"
.LASF22:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF3:
	.string	"unsigned int"
.LASF15:
	.string	"long long unsigned int"
.LASF26:
	.string	"mat_mul_c"
.LASF18:
	.string	"argc"
.LASF10:
	.string	"__clock_t"
.LASF12:
	.string	"long long int"
.LASF11:
	.string	"char"
.LASF16:
	.string	"printf"
.LASF7:
	.string	"short int"
.LASF19:
	.string	"argv"
.LASF8:
	.string	"long int"
.LASF6:
	.string	"signed char"
.LASF17:
	.string	"malloc"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"main.c"
.LASF1:
	.string	"/src"
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
