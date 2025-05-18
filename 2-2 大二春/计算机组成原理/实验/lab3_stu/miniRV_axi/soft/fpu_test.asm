.data
	float0: .float 12.567
	float1: .float 6.321
	float2: .float -0.345
	float3: .float -0.845
	float4: .float -0.75
	float5: .float 5.0
	float6: .float 3.14
	float7: .float -2.71828
	float8: .float -996.007
	float9: .float -0.1244

.text
MAIN:
	ori s3, zero, 5			# 共5组测试
	ori s2, zero, 0
	
	lui a7, 0xFFFF1			# a7 = 0xFFFF1000 LED外设I/O地址
	lui a6, 0xFFFF2   		# a6 = 0xFFFF2000 FPU外设I/O地址
	lui a0, 0x4             # a0 = 0x00004000 数据段基址
	ori s0, zero, 0			# op add
	ori s1, zero, 1			# op sub

test:
	lw   t0, 0(a0)			# load src1
	lw   t1, 4(a0)			# load src2
	sw   t0, 0(a6)        	# write src1 to src_A of FPU
	sw   t1, 4(a6)        	# write src2 to src_B of FPU
	
	# add test
	sw   s0, 8(a6)       	# start by writing op of FPU
wait_add:
	lw   t0, 0(a6)			# read ready of FPU
	beq  t0, zero, wait_add # check if calculation is done
	lw   t0, 4(a6)     		# read result of FPU
	sw   t0, 0(a7)          # write result to LED
	
	# sub test
	sw   s1, 8(a6)       	# start by writing op of FPU
wait_sub:
	lw   t0, 0(a6)			# read ready of FPU
	beq  t0, zero, wait_sub # check if calculation is done
	lw   t0, 4(a6)     		# read result of FPU
	sw   t0, 0(a7)          # write result to LED

	addi a0, a0, 8
	addi s2, s2, 1
	blt  s2, s3, test
	
dead_loop:
	jal  zero, dead_loop
