// `define RANDOM_DELAY
// `define ENABLE_ICACHE
// `define ENABLE_DCACHE

`define BLK_LEN  8
`define BLK_SIZE (`BLK_LEN*32)

// Instruction opcode
`define R_Typ   7'b0110011
`define I_Typ   7'b0010011
`define LOAD    7'b0000011
`define JALR    7'b1100111
`define S_Typ   7'b0100011
`define B_Typ   7'b1100011
`define LUI     7'b0110111
`define JAL     7'b1101111
`define FLTA    7'b1010011

// ALU OP
`define OP_ADD  5'h0
`define OP_SUB  5'h1
`define OP_AND  5'h2
`define OP_OR   5'h3
`define OP_XOR  5'h4
`define OP_SLL  5'h5
`define OP_SRL  5'h6
`define OP_SRA  5'h7
`define OP_MUL  5'h8
`define OP_MULH 5'h9
`define OP_DIV  5'hA
`define OP_REM  5'hB
`define OP_FADD 5'hC
`define OP_FSUB 5'hD

// Peripheral Address
`define PERI_ADDR_DIG   32'hFFFF_F000
`define PERI_ADDR_LED   32'hFFFF_F060
`define PERI_ADDR_SW    32'hFFFF_F070
`define PERI_ADDR_BTN   32'hFFFF_F078

`define OFFSET_DIG      12'h000
`define OFFSET_LED      12'h060
`define OFFSET_SW       12'h070
`define OFFSET_BTN      12'h078
