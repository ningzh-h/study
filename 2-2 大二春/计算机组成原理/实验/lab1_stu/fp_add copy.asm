.data
    float1: .float 15.67
    float2: .float 6.7

.macro push %a
    addi sp, sp, -4
    sw   %a, 0(sp)
.end_macro

.macro pop %a
    lw   %a, 0(sp)
    addi sp, sp, 4
.end_macro

.macro print %a
    fmv.s.x fa0, %a
    li a7, 2
    ecall
.end_macro

.text
.globl MAIN
MAIN:
    flw f0, float1, t0 
    flw f1, float2, t1 
    jal ra, FLOAT_ADD  
    print a0           
    lui a7, 10
    ecall              

FLOAT_ADD:
    push s0
    push s1
    push s2
    push s3
    push s4
    push s5
    push s6

    fmv.x.s s0, f0  
    fmv.x.s s1, f1

    li t0, 0x80000000
    and s2, s0, t0 
    and s3, s1, t0  

    srli s4, s0, 23
    andi s4, s4, 0xFF
    srli s5, s1, 23
    andi s5, s5, 0xFF 

    li t1, 0x007FFFFF
    and s0, s0, t1
    li t2, 0x00800000
    or s0, s0, t2 
    and s1, s1, t1
    or s1, s1, t2  

    sub t3, s4, s5
    bge t3, zero, ALIGN_F1
    sub t3, s5, s4
    srl s0, s0, t3
    mv s6, s5
    j ADD_MANTISSA
ALIGN_F1:
    srl s1, s1, t3
    mv s6, s4

ADD_MANTISSA:
    add s0, s0, s1  
    
    li t0, 0x01000000
    and t1, s0, t0
    beqz t1, NORMALIZE_LEFT
    srli s0, s0, 1
    addi s6, s6, 1    
    j NORMALIZE_DONE

NORMALIZE_LEFT:
    li t0, 0x00800000
NORMALIZE_LOOP:
    and t1, s0, t0
    bnez t1, NORMALIZE_DONE
    slli s0, s0, 1
    addi s6, s6, -1
    j NORMALIZE_LOOP

NORMALIZE_DONE:
    li t0, 0x007FFFFF
    and s0, s0, t0

    slli s6, s6, 23    
    or a0, s2, s6      
    or a0, a0, s0      

    pop s6
    pop s5
    pop s4
    pop s3
    pop s2
    pop s1
    pop s0
    ret
