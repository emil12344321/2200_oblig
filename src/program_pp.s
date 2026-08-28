# 0 "mips_asm.S"
# 1 "/src//"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/mips64-linux-gnuabi64/include/stdc-predef.h" 1 3
# 0 "<command-line>" 2
# 1 "mips_asm.S"
.global mat_mul_asm # Make this label available in the global symbol table
.type mat_mul_asm, @function # Declare this label type: function

# a0 = size
    # a1 = a
    # a2 = b
    # a3 = c


mat_mul_asm:
    # a0 = size
    # a1 = a
    # a2 = b
    # a3 = c

    daddu $t1, $zero, $zero # j = 0

loopk:


loopj:
    slt $t0, $t1, $a0 # t0 = (j < size) ? 1 : 0 || sjekker for hver iterasjon
    beq $t0, $zero, endj # hopp ut av loopen når j >= size
    nop

    dsll $t3, $t1, 2 # t3 = j * 4 (felles byte-offset for a, b og c)

    daddu $t2, $a1, $t3 # t2 = &a[j]
    lw $t2, 0($t2) # t2 = a[j] (adressen "brukes opp" og erstattes av verdien)

    daddu $t0, $a2, $t3 # t0 = &b[j]
    lw $t0, 0($t0) # t0 = b[j]

    mult $t2, $t0 # LO = a[j] * b[j]
    mflo $t8 # t8 = LO (nederste 32 bit av resultatet)

    daddu $t9, $a3, $t3 # t9 = &c[j]
    sw $t8, 0($t9) # c[j] = a[j] * b[j]

    daddiu $t1, $t1, 1 # j++
    j loopj
    nop

endj:
    jr $ra
    nop
