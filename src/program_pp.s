# 0 "mips_asm.S"
# 1 "/src//"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/mips64-linux-gnuabi64/include/stdc-predef.h" 1 3
# 0 "<command-line>" 2
# 1 "mips_asm.S"
.global mat_mul_asm # Make this label available in the global symbol table
.type mat_mul_asm, @function # Declare this label type: function

mat_mul_asm:
    # a0 = size
    # a1 = a
    # a2 = b
    # a3 = c
 daddiu $sp, $sp, -12
    daddu $t1, $zero, $zero # k = 0 || teller element i rad
 daddu $s0, $zero, $zero # j = 0 || teller hvilken rad
 daddu $s1, $zero, $zero # radoffset (i byte) = 0 for rad 0


# 1. optimaliser registerbruk etter funksjonen gjør det den skal
# 2. optimaliser branch logikk etter funkjson gjør det den skal

neste_element_k:
    slt $t0, $t1, $a0 # t0 = (k < size) ? 1 : 0 || sjekker for hver iterasjon
    beq $t0, $zero, sjekker_ferdig_matrise # hopp ut av loopen når k >= size og sjekker om matrisen er ferdig
    nop

    dsll $t3, $t1, 2 # t3 = k * 4 (felles byte-offset for a og b)
    daddu $t3, $t3, $s1 # t3 = k*4 + rad_offset (j*size*4) -> byte-offset for element [j][k]

    daddu $t2, $a1, $t3 # t2 = &a[j]+[k]
    lw $t2, 0($t2) # t2 = a[k] (adressen "brukes opp" og erstattes av verdien)

    daddu $t0, $a2, $t3 # t0 = &b[k]
    lw $t0, 0($t0) # t0 = b[k]



    mult $t2, $t0 # LO = a[k] * b[k] -- her mangler det +k og +j
    mflo $t8 # t8 = LO (nederste 32 bit av resultatet)

    daddu $t9, $a3, $t3 # t9 = &c[k]
 lw $ta0, 0($t9) # c
 daddu $t8, $ta0, $t8

    sw $t8, 0($t9) # c[k] = a[k] * b[k]

    daddiu $t1, $t1, 1 # k++
    j neste_element_k
    nop




neste_rad_j:

 #legg til offset
 dsll $t0, $a0, 2 # t0 = size * 4
 mult $s0, $t0 # LO = j * radbredde
 mflo $s1 # s1 = j * size * 4 (total radoffset, brukes i neste_element_k)

 daddiu $t1, $zero, 0
 daddiu $s0, $s0, 1 # j++

 #start neste runde med iterasjoner
 j neste_element_k



#betingelsen for gå til denne labelen er at k = 10
# så vi sjekker bare at j = 10 i denne prosdyren
sjekker_ferdig_matrise:

 beq $s0, $a0, end
 nop

 daddi $t0, $zero, 0 # sett true/false i linje 19 til default false

 #siden k != 10 så går vi til neste rad
 j neste_rad_j

 nop
 #ferdig med matrisen

end:
 daddiu $sp, $sp, 12


 jr $ra
