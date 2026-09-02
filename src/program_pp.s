# 0 "mips_asm.S"
# 1 "/src//"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/mips64-linux-gnuabi64/include/stdc-predef.h" 1 3
# 0 "<command-line>" 2
# 1 "mips_asm.S"
.global mat_mul_asm
.type mat_mul_asm, @function

mat_mul_asm:
    daddu $s0, $zero, $zero # i = 0
    dsll $s7, $a0, 2 # s7 = size*4 (byte-stride per rad)

loop_i:

 #hvis i er ferdig gå til end
    slt $t0, $s0, $a0
    beq $t0, $zero, end
    nop

    mult $s0, $a0
    mflo $s3
    dsll $s3, $s3, 2 # s3 = i*size*4 (radoffset for a og c)

    daddu $s1, $zero, $zero # j = 0

loop_j:
    slt $t0, $s1, $a0
    beq $t0, $zero, next_i
    nop

    dsll $t8, $s1, 2 # t8 = j*4 (kolonneoffset for b og c)

    daddu $s2, $zero, $zero # k = 0

loop_k:
    slt $t0, $s2, $a0
    beq $t0, $zero, next_j
    nop

    dsll $t0, $s2, 2 # t0 = k*4

    # a[i*size + k]
    daddu $t1, $t0, $s3
    daddu $t1, $t1, $a1
    lw $t2, 0($t1)

    # b[k*size + j]
    mult $s2, $a0
    mflo $t3
    dsll $t3, $t3, 2
    daddu $t3, $t3, $t8
    daddu $t3, $t3, $a2
    lw $t9, 0($t3)

    mult $t2, $t9
    mflo $t3 # t3 = a[i][k]*b[k][j]

    # c[i*size + j]
    daddu $t1, $s3, $t8
    daddu $t1, $t1, $a3
    lw $t9, 0($t1)
    daddu $t9, $t9, $t3
    sw $t9, 0($t1)

    daddiu $s2, $s2, 1
    j loop_k
    nop

next_j:
    daddiu $s1, $s1, 1
    j loop_j
    nop

next_i:
    daddiu $s0, $s0, 1
    j loop_i
    nop

end:
    jr $ra
    nop
