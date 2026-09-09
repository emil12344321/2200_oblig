.text # Code segment
.global mat_mul_asm # Make this label available in the global symbol table
.type mat_mul_asm, @function # Declare this label type: function

mat_mul_asm:
    # handle callee-saved registers
    pushq %r12
    pushq %r13
    pushq %r14
    pushq %r15
    pushq %rbx

    movl %edi, %r12d    # size
    movq %rsi, %r13     # A
    movq %rdx, %r14     # B
    movq %rcx, %r15     # C

    xorq %r8, %r8       # i = 0


.Louter_loop:
    cmpq %r12, %r8
    jae .Ldone      # exit function

    # calculate the rowOffset (i * size * 4)
    movq %r8, %r11
    imulq %r12, %r11
    shlq $2, %r11

    # j = 0
    xorq %r9, %r9


.Lmiddle_loop:
    cmpq %r12, %r9       # if j >= size -> next_i
    jae .Lnext_i

    xorq %r10, %r10     # k = 0

.Linner_loop: 
    cmpq %r12, %r10      # if k >= size -> next_j 
    jae .Lnext_j


    # A[i][k] 
    # rax = A + rowOffset
    leaq (%r13,%r11), %rax

    # ebx = A[i][k]
    movl (%rax,%r10,4), %ebx

    # B[k][j]
    # rax = k * size + j
    movq %r10, %rax
    imulq %r12, %rax
    addq %r9, %rax

    # ecx = B[k][j]
    movl (%r14,%rax,4), %ecx

    # mutliply

    # ebx = A[i][k] * B[k][j]
    imull %ecx, %ebx


    # C[i][j] += product

    # rax = c + rowOffset
    leaq (%r15,%r11), %rax

    addl %ebx, (%rax,%r9,4)

    incq %r10       # k++
    jmp .Linner_loop


.Lnext_j:

    incq %r9        # j++
    jmp .Lmiddle_loop

.Lnext_i:

    incq %r8        # i++
    jmp .Louter_loop

.Ldone:

    # Return registers
    popq %rbx
    popq %r15
    popq %r14
    popq %r13
    popq %r12

    ret