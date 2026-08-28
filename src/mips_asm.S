.global mat_mul_asm # Make this label available in the global symbol table
.type mat_mul_asm, @function # Declare this label type: function

mat_mul_asm:
    # a0 = size
    # a1 = a
    # a2 = b
    # a3 = c

    daddu $t1, $zero, $zero   # k = 0
	daddu $s0 $zero, $zero.   # j = 0



neste_element_k:
    slt   $t0, $t1, $a0       # t0 = (k < size) ? 1 : 0 || sjekker for hver iterasjon
    beq   $t0, $zero, bytt_rad_j    # hopp ut av loopen når k >= size
    nop

    dsll  $t3, $t1, 2         # t3 = k * 4 (felles byte-offset for a og b)

    daddu $t2, $a1, $t3       # t2 = &a[k]
    lw    $t2, 0($t2)         # t2 = a[k]  (adressen "brukes opp" og erstattes av verdien)

    daddu $t0, $a2, $t3       # t0 = &b[k]
    lw    $t0, 0($t0)         # t0 = b[k]

    mult  $t2, $t0            # LO = a[k] * b[k]
    mflo  $t8                 # t8 = LO (nederste 32 bit av resultatet)

    daddu $t9, $a3, $t3       # t9 = &c[k]
    sw    $t8, 0($t9)         # c[k] = a[k] * b[k]

    daddiu $t1, $t1, 1        # k++
    j     neste_element_k
    nop




bytt_rad_j:
	#sjekker om vi er ferdig med matrisen 
	slt   $t0, $s0, $a0       
	beq   $t0, $zero, ferdig_matrise # gå til ferdig_matrise 


	#siden matrisen ikke er ferdig går vi til neste rad 
	beq   $t0, $zero, neste_element_k    # hopp ut av loopen når k >= size
	dsll  $t3, $t1, 2         # t3 = endre offset for å bytte rad-- fiks dette
	bgt 					  # hvis vi er på slutten av raden->branch til sjekk om vi er ferdig med matrisen





	daddiu $t1, $t1, 1        # k++
    j     loopj


ferdig_matrise:

	jr $ra













