.data
    float1: .float 1000
    float2: .float 1
    
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
MAIN:
    # f0 = -9.777
    lui t0, %hi(float1)      
    addi t0, t0, %lo(float1) 
    flw f0, 0(t0)            

    # f1 = -1.234
    lui t1, %hi(float2)
    addi t1, t1, %lo(float2)
    flw f1, 0(t1)          

    jal ra, FLOAT_ADD    # 调用浮点数加法子程序
    print a0
    addi a7, x0, 10
    ecall 

FLOAT_ADD:
    push s0
    push s1
    push s2
    push s3
    push s4
    push s5
    push s6

    # 转换为整数表示
    fmv.x.s s0, f0          # f0 -- s0
    fmv.x.s s1, f1          # f1 -- s1

    # 提取符号
    lui t0, 0x80000 
    addi t0, t0, 0x000
    and s2, s0, t0          # f0 符号 -- s2
    and s3, s1, t0          # f1 符号 -- s3

    # 提取阶码
    # f0 阶码
    srli s4, s0, 23
    andi s4, s4, 0xFF
    # f1 阶码
    srli s5, s1, 23
    andi s5, s5, 0xFF

    # 提取尾数 + 隐含1
    lui t1 0x00800
    addi t1, t1, -1
    and s0, s0, t1
    lui t2, 0x00800 
    addi t2, t2, 0x000
    or s0, s0, t2           # f0 尾数 -- s0
    and s1, s1, t1
    or s1, s1, t2           # f1 尾数 -- s1

    # 对齐尾数
    sub t3, s4, s5          # 阶差 = E1 - E2
    bge t3, x0, ALIGN_F1
    sub t3, s5, s4          # 阶差 = E2 - E1
    srl s0, s0, t3          # 右移较小阶码的尾数
    addi s6, s5, -3         # 调整阶码
    
    # 尾数相加
    jal x0, ADD_MANTISSA

ALIGN_F1:
    srl s1, s1, t3
    addi s6, s4, 0

# 尾数相加
ADD_MANTISSA:
    add s0, s0, s1       # 相加尾数（假设符号相同）
    
    lui t0, 0x01000
    addi t0, t0, 0x000
    and t1, s0, t0
    beq t1, x0, NORMALIZE_LEFT
    srli s0, s0, 1
    addi s6, s6, 1       # 阶码加1
    jal x0, NORMALIZE_DONE

NORMALIZE_LEFT:
    lui t0, 0x00800
    addi t0, t0, 0x000
    
NORMALIZE_LOOP:
    and t1, s0, t0
    bne t1, x0, NORMALIZE_DONE
    slli s0, s0, 1
    addi s6, s6, -1
    jal x0, NORMALIZE_LOOP

NORMALIZE_DONE:
    # 去掉隐含1
    lui t0, 0x00800
    addi t0, t0, -1
    and s0, s0, t0

    # 组装结果
    slli s6, s6, 23      # 阶码移位
    or a0, s2, s6        # 加上符号和阶码
    or a0, a0, s0        # 加上尾数

    pop s6
    pop s5
    pop s4
    pop s3
    pop s2
    pop s1
    pop s0
    jalr x0, ra, 0
