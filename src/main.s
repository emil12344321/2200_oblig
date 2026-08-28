	.section .mdebug.abi64
	.previous
	.nan	legacy
	.module	fp=64
	.module	oddspreg
	.module	arch=mips64r2
	.abicalls
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "main.c"
	.rdata
	.align	3
.LC0:
	.ascii	"%d \000"
	.text
	.align	2
	.globl	main
.LFB6 = .
	.loc 1 19 33
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$fp,96,$31		# vars= 64, regs= 3/0, args= 0, gp= 0
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-96
	.cfi_def_cfa_offset 96
	sd	$31,88($sp)
	sd	$fp,80($sp)
	sd	$28,72($sp)
	.cfi_offset 31, -8
	.cfi_offset 30, -16
	.cfi_offset 28, -24
	move	$fp,$sp
	.cfi_def_cfa_register 30
	lui	$28,%hi(%neg(%gp_rel(main)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(main)))
	move	$2,$4
	sd	$5,0($fp)
	sll	$2,$2,0
	sw	$2,12($fp)
	.loc 1 21 7
	li	$2,10			# 0xa
	sw	$2,36($fp)
	.loc 1 22 23
	lw	$2,36($fp)
	mult	$2,$2
	mflo	$2
	dext	$2,$2,0,32
	.loc 1 22 12
	dsll	$2,$2,2
	move	$4,$2
	ld	$2,%call16(malloc)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,malloc
1:	jalr	$25
	nop

.LVL0 = .
	sd	$2,40($fp)
	.loc 1 23 23
	lw	$2,36($fp)
	mult	$2,$2
	mflo	$2
	dext	$2,$2,0,32
	.loc 1 23 12
	dsll	$2,$2,2
	move	$4,$2
	ld	$2,%call16(malloc)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,malloc
1:	jalr	$25
	nop

.LVL1 = .
	sd	$2,48($fp)
	.loc 1 24 23
	lw	$2,36($fp)
	mult	$2,$2
	mflo	$2
	dext	$2,$2,0,32
	.loc 1 24 12
	dsll	$2,$2,2
	move	$4,$2
	ld	$2,%call16(malloc)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,malloc
1:	jalr	$25
	nop

.LVL2 = .
	sd	$2,56($fp)
.LBB2 = .
	.loc 1 25 10
	sw	$0,20($fp)
	.loc 1 25 2
	b	.L2
	nop

.L5:
.LBB3 = .
	.loc 1 26 11
	sw	$0,24($fp)
	.loc 1 26 3
	b	.L3
	nop

.L4:
	.loc 1 27 22 discriminator 3
	lw	$2,20($fp)
	addiu	$2,$2,1
	move	$4,$2
	.loc 1 27 11 discriminator 3
	lw	$2,20($fp)
	lw	$3,36($fp)
	mult	$3,$2
	mflo	$3
	.loc 1 27 14 discriminator 3
	lw	$2,24($fp)
	addu	$2,$3,$2
	dext	$2,$2,0,32
	.loc 1 27 6 discriminator 3
	dsll	$2,$2,2
	ld	$3,40($fp)
	daddu	$2,$3,$2
	.loc 1 27 22 discriminator 3
	move	$3,$4
	.loc 1 27 19 discriminator 3
	sw	$3,0($2)
	.loc 1 28 22 discriminator 3
	lw	$2,24($fp)
	addiu	$2,$2,1
	move	$4,$2
	.loc 1 28 11 discriminator 3
	lw	$2,20($fp)
	lw	$3,36($fp)
	mult	$3,$2
	mflo	$3
	.loc 1 28 14 discriminator 3
	lw	$2,24($fp)
	addu	$2,$3,$2
	dext	$2,$2,0,32
	.loc 1 28 6 discriminator 3
	dsll	$2,$2,2
	ld	$3,48($fp)
	daddu	$2,$3,$2
	.loc 1 28 22 discriminator 3
	move	$3,$4
	.loc 1 28 19 discriminator 3
	sw	$3,0($2)
	.loc 1 29 11 discriminator 3
	lw	$2,20($fp)
	lw	$3,36($fp)
	mult	$3,$2
	mflo	$3
	.loc 1 29 14 discriminator 3
	lw	$2,24($fp)
	addu	$2,$3,$2
	dext	$2,$2,0,32
	.loc 1 29 6 discriminator 3
	dsll	$2,$2,2
	ld	$3,56($fp)
	daddu	$2,$3,$2
	.loc 1 29 19 discriminator 3
	sw	$0,0($2)
	.loc 1 26 29 discriminator 3
	lw	$2,24($fp)
	addiu	$2,$2,1
	sw	$2,24($fp)
.L3:
	.loc 1 26 20 discriminator 1
	lw	$2,24($fp)
	lw	$3,36($fp)
	sltu	$2,$2,$3
	bne	$2,$0,.L4
	nop

.LBE3 = .
	.loc 1 25 28 discriminator 2
	lw	$2,20($fp)
	addiu	$2,$2,1
	sw	$2,20($fp)
.L2:
	.loc 1 25 19 discriminator 1
	lw	$2,20($fp)
	lw	$3,36($fp)
	sltu	$2,$2,$3
	bne	$2,$0,.L5
	nop

.LBE2 = .
	.loc 1 34 2
	lw	$2,36($fp)
	ld	$7,56($fp)
	ld	$6,48($fp)
	ld	$5,40($fp)
	move	$4,$2
	ld	$2,%call16(mat_mul_asm)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,mat_mul_asm
1:	jalr	$25
	nop

.LVL3 = .
.LBB4 = .
	.loc 1 37 12
	sw	$0,28($fp)
	.loc 1 37 2
	b	.L6
	nop

.L9:
.LBB5 = .
	.loc 1 38 13
	sw	$0,32($fp)
	.loc 1 38 3
	b	.L7
	nop

.L8:
	.loc 1 39 24 discriminator 3
	lw	$3,36($fp)
	lw	$2,28($fp)
	mult	$3,$2
	mflo	$2
	.loc 1 39 27 discriminator 3
	lw	$3,32($fp)
	addu	$2,$3,$2
	dext	$2,$2,0,32
	.loc 1 39 19 discriminator 3
	dsll	$2,$2,2
	ld	$3,56($fp)
	daddu	$2,$3,$2
	.loc 1 39 4 discriminator 3
	lw	$2,0($2)
	move	$5,$2
	ld	$2,%got_page(.LC0)($28)
	daddiu	$4,$2,%got_ofst(.LC0)
	ld	$2,%call16(printf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	nop

.LVL4 = .
	.loc 1 38 31 discriminator 3
	lw	$2,32($fp)
	addiu	$2,$2,1
	sw	$2,32($fp)
.L7:
	.loc 1 38 22 discriminator 1
	lw	$3,32($fp)
	lw	$2,36($fp)
	sltu	$2,$3,$2
	bne	$2,$0,.L8
	nop

.LBE5 = .
	.loc 1 41 3 discriminator 2
	li	$4,10			# 0xa
	ld	$2,%call16(putchar)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,putchar
1:	jalr	$25
	nop

.LVL5 = .
	.loc 1 37 30 discriminator 2
	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
.L6:
	.loc 1 37 21 discriminator 1
	lw	$3,28($fp)
	lw	$2,36($fp)
	sltu	$2,$3,$2
	bne	$2,$0,.L9
	nop

.LBE4 = .
	move	$2,$0
	.loc 1 43 1
	move	$sp,$fp
	.cfi_def_cfa_register 29
	ld	$31,88($sp)
	ld	$fp,80($sp)
	ld	$28,72($sp)
	daddiu	$sp,$sp,96
	.cfi_restore 28
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	main
	.cfi_endproc
.LFE6:
	.size	main, .-main
.Letext0:
	.file 2 "/usr/lib/gcc-cross/mips64-linux-gnuabi64/12/include/stddef.h"
	.file 3 "/usr/mips64-linux-gnuabi64/include/sys/types.h"
	.file 4 "/usr/mips64-linux-gnuabi64/include/stdio.h"
	.file 5 "/usr/mips64-linux-gnuabi64/include/stdlib.h"
	.file 6 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x25d
	.2byte	0x5
	.byte	0x1
	.byte	0x8
	.4byte	.Ldebug_abbrev0
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x1d
	.4byte	.LASF22
	.4byte	.LASF23
	.8byte	.Ltext0
	.8byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x8
	.4byte	.LASF9
	.byte	0x2
	.byte	0xd6
	.byte	0x17
	.4byte	0x3a
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0xc
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0xd
	.byte	0x8
	.uleb128 0x5
	.4byte	0x79
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.4byte	.LASF7
	.uleb128 0xe
	.4byte	0x79
	.uleb128 0x5
	.4byte	0x80
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x8
	.4byte	.LASF10
	.byte	0x3
	.byte	0x96
	.byte	0x16
	.4byte	0x4f
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x9
	.4byte	.LASF12
	.byte	0x4
	.2byte	0x16b
	.byte	0xc
	.4byte	0x64
	.4byte	0xbc
	.uleb128 0x3
	.4byte	0x85
	.uleb128 0xf
	.byte	0
	.uleb128 0x10
	.4byte	.LASF24
	.byte	0x1
	.byte	0x6
	.byte	0xd
	.4byte	0xdd
	.uleb128 0x3
	.4byte	0x91
	.uleb128 0x3
	.4byte	0xdd
	.uleb128 0x3
	.4byte	0xdd
	.uleb128 0x3
	.4byte	0xdd
	.byte	0
	.uleb128 0x5
	.4byte	0x91
	.uleb128 0x9
	.4byte	.LASF13
	.byte	0x5
	.2byte	0x2a0
	.byte	0xe
	.4byte	0x72
	.4byte	0xf9
	.uleb128 0x3
	.4byte	0x2e
	.byte	0
	.uleb128 0x11
	.4byte	.LASF25
	.byte	0x1
	.byte	0x13
	.byte	0x5
	.4byte	0x64
	.8byte	.LFB6
	.8byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x240
	.uleb128 0xa
	.4byte	.LASF14
	.byte	0xe
	.4byte	0x64
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0xa
	.4byte	.LASF15
	.byte	0x1b
	.4byte	0x240
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x12
	.4byte	.LASF16
	.byte	0x1
	.byte	0x15
	.byte	0x7
	.4byte	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.ascii	"a\000"
	.byte	0x16
	.byte	0x8
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.ascii	"b\000"
	.byte	0x17
	.byte	0x8
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.ascii	"c\000"
	.byte	0x18
	.byte	0x8
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.8byte	.LBB2
	.8byte	.LBE2-.LBB2
	.4byte	0x1ac
	.uleb128 0x2
	.ascii	"i\000"
	.byte	0x19
	.byte	0xa
	.4byte	0x64
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x13
	.8byte	.LBB3
	.8byte	.LBE3-.LBB3
	.uleb128 0x2
	.ascii	"j\000"
	.byte	0x1a
	.byte	0xb
	.4byte	0x64
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.uleb128 0x6
	.8byte	.LBB4
	.8byte	.LBE4-.LBB4
	.4byte	0x20b
	.uleb128 0x2
	.ascii	"i\000"
	.byte	0x25
	.byte	0xc
	.4byte	0x91
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x6
	.8byte	.LBB5
	.8byte	.LBE5-.LBB5
	.4byte	0x1fd
	.uleb128 0x2
	.ascii	"j\000"
	.byte	0x26
	.byte	0xd
	.4byte	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x4
	.8byte	.LVL4
	.4byte	0x245
	.byte	0
	.uleb128 0x4
	.8byte	.LVL5
	.4byte	0x24e
	.byte	0
	.uleb128 0x4
	.8byte	.LVL0
	.4byte	0x257
	.uleb128 0x4
	.8byte	.LVL1
	.4byte	0x257
	.uleb128 0x4
	.8byte	.LVL2
	.4byte	0x257
	.uleb128 0x4
	.8byte	.LVL3
	.4byte	0xbc
	.byte	0
	.uleb128 0x5
	.4byte	0x74
	.uleb128 0x7
	.4byte	.LASF12
	.4byte	.LASF18
	.uleb128 0x7
	.4byte	.LASF17
	.4byte	.LASF19
	.uleb128 0x7
	.4byte	.LASF13
	.4byte	.LASF20
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x2
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
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 19
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
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x8
	.byte	0
	.2byte	0
	.2byte	0
	.8byte	.Ltext0
	.8byte	.Letext0-.Ltext0
	.8byte	0
	.8byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF9:
	.ascii	"size_t\000"
.LASF19:
	.ascii	"__builtin_putchar\000"
.LASF23:
	.ascii	"/src\000"
.LASF16:
	.ascii	"size\000"
.LASF0:
	.ascii	"long unsigned int\000"
.LASF2:
	.ascii	"short unsigned int\000"
.LASF17:
	.ascii	"putchar\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF24:
	.ascii	"mat_mul_asm\000"
.LASF5:
	.ascii	"short int\000"
.LASF10:
	.ascii	"uint\000"
.LASF25:
	.ascii	"main\000"
.LASF3:
	.ascii	"unsigned int\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF18:
	.ascii	"__builtin_printf\000"
.LASF14:
	.ascii	"argc\000"
.LASF8:
	.ascii	"long long int\000"
.LASF22:
	.ascii	"main.c\000"
.LASF7:
	.ascii	"char\000"
.LASF12:
	.ascii	"printf\000"
.LASF20:
	.ascii	"__builtin_malloc\000"
.LASF15:
	.ascii	"argv\000"
.LASF6:
	.ascii	"long int\000"
.LASF4:
	.ascii	"signed char\000"
.LASF13:
	.ascii	"malloc\000"
.LASF21:
	.ascii	"GNU C17 12.4.0 -meb -march=mips64r2 -mllsc -mplt -mips64"
	.ascii	"r2 -mno-shared -mabi=64 -g -O0 -fstack-protector-strong\000"
	.ident	"GCC: (Ubuntu 12.4.0-2ubuntu1~24.04) 12.4.0"
	.section	.note.GNU-stack,"",@progbits
