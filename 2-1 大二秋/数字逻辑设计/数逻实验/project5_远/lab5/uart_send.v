`timescale 1ns / 1ps

module uart_send(

input        clk,        
input        rst,        
input        valid,      
input [7:0]  data,        
output reg   dout         
);

localparam IDLE  = 2'b00;   
localparam START = 2'b01;   
localparam DATA  = 2'b10;  
localparam STOP  = 2'b11;   

reg [2:0] bit_cnt;
reg [7:0] tx_data;
reg [1:0] current_state;
reg [1:0] next_state;

localparam bt_freq = 10416;
reg [15:0] counter;
reg tick;
always @(posedge clk or posedge rst)begin
if(rst||valid)begin
    counter <= 0;
    tick <= 0;
end
else if(counter == bt_freq - 1)begin
    counter <= 0;
    tick <= 1;
end
else begin
    counter <= counter + 1;
    tick <= 0;
end
end

always @(posedge clk or posedge rst) begin
if(rst) current_state <= IDLE;
else if(valid)begin
        current_state <= START;
        tx_data <= data;
end
else if(tick)  current_state <= next_state;
end

always @(*) begin
case (current_state)
    IDLE: if(valid) next_state = START;
          else next_state = IDLE;
    START:next_state = DATA;
    DATA: if(bit_cnt < 7) next_state = DATA;  
          else if(bit_cnt == 7) next_state = STOP;
    STOP: next_state = IDLE;
endcase
end

always @(posedge clk or posedge rst) begin
if(rst) begin
    dout <= 1;
    bit_cnt <= 0;  
end
else begin
    case(current_state)
        IDLE :   dout <= 1;
        START :  dout <= 0;
        DATA : begin  
                 dout <= tx_data[bit_cnt];  
                 if (tick) bit_cnt <= bit_cnt + 1;  
               end
        STOP :   dout <= 1;
    endcase
end
end

//     input wire   clk,         // 9600 波特率的时钟信号
//     input wire   rst,         // 复位信号
//     input wire   valid,       // 数据有效信号，高电平维持一个时钟周期
//     input [7:0]  data,    // 需要发送的数据
//     output reg  dout         // 串口发送数据引脚 (连接到USB UART的TX引脚)
//   );

//   // 状态定义
//   localparam IDLE  = 2'b00;   // 空闲状态，发送高电平
//   localparam START = 2'b01;   // 起始位状态，发送起始位 (低电平)
//   localparam DATA  = 2'b10;   // 数据位状态，逐位发送8位数据
//   localparam STOP  = 2'b11;   // 停止位状态，发送停止位 (高电平)



//   reg [1:0] current_state, next_state = 2'b00; // 当前状态和下一状态
//   reg [3:0] bit_index;                 // 数据位计数器，控制发送8位数据
//   reg [7:0] shift_reg;                 // 用于保存数据的移位寄存器
//   reg baud_tick = 0;                       // 波特率时钟脉冲，用于同步数据发送
//   reg flag = 0;
// //   reg dout = 0;


//   // 波特率生成部分（波特率为9600，时钟频率为100MHz）
//   localparam CLOCK_FREQ = 100*1e6;         //时钟频率: 100MHz
//   localparam PERIOD     = 1e9/CLOCK_FREQ;  //时钟周期: 10ns
//   localparam BAUD_RATE  = 9600;
//   //   localparam BAUD_DIV    = CLOCK_FREQ / BAUD_RATE -1; // 波特率计数器分频值 (100MHz / 9600 - 1)
//   localparam BAUD_DIV = 10416;
//   reg [13:0] baud_counter = 0;

//   always @(posedge clk or posedge rst)
//   begin
//     if (rst)
//     begin
//       baud_counter <= 0;
//       baud_tick <= 0;
//     end
//     else
//     begin
//       if (baud_counter >= BAUD_DIV)
//       begin
//         baud_counter <= 0;
//         baud_tick <= 1;
//       end
//       else
//       begin
//         baud_counter <= baud_counter + 1;
//         baud_tick <= 0;
//       end
//     end
//   end

//   always @(posedge clk or posedge rst)
//   begin
//     if (rst)
//       shift_reg <= 8'b0;
//     else if (valid)
//     begin
//       shift_reg <= data;
//     end
//   end

//   always @(posedge clk)
//   begin
//     if (valid)
//     begin
//       flag = 1;
//     end
//     if (flag)
//       if (current_state == START)
//         flag =0;
//   end

//   // 第1个always块：描述状态迁移（次态到现态）
//   always @(posedge clk or posedge rst)
//   begin
//     if (rst)
//       current_state <= IDLE;
//       // next_state <= IDLE;
//     else //if (baud_tick)  // 在波特率脉冲下进行状态迁移
//       current_state <= next_state;
//   end

//   // 第2个always块：状态转移条件判断
//   always @(*)
//   begin
//     if (baud_tick)
//       if (flag)
//       begin
//         next_state = START;
//       end
//       else
//       begin
//         case (next_state)
//           IDLE:
//           begin
//             //   if (flag)
//             //   begin         // 如果数据有效，进入起始状态
//             //     next_state = START;
//             //     flag = 0;
//             //   end
//             //   else
//             next_state = IDLE;
//           end
//           START:
//           begin
//             next_state = DATA; // 起始位发送完后，进入数据发送状态
//             //   flag = 0;
//           end
//           DATA:
//           begin
//             if (bit_index == 7)
//             begin// 8位数据发送完，进入停止位
//               next_state = STOP;
//               // bit_index = 0;
//             end
//             else
//             begin
//               next_state = DATA; // 否则继续发送数据位

//               // flag = 0;
//             end
//           end
//           STOP:
//           begin
//             next_state = IDLE;  // 停止位发送完后回到空闲状态
//             //   flag = 0;
//           end
//           default:
//             next_state = IDLE;
//         endcase
//       end
//   end


//   always @(posedge clk or posedge rst)
//   begin
//     if (rst)
//     begin
//       // shift_reg <= 8'b0;    // 清空移位寄存器
//       bit_index <= 3'b0;       // 复位数据位计数器
//     end
//     else if (valid)
//       bit_index =0;
//     else if (baud_tick)
//     begin
//       if (current_state == DATA)
//         bit_index <= bit_index + 1;   // 数据位计数器加一
//     end
//   end

//   // 第3个always块：输出逻辑
//   // Output logic
//   always @(posedge clk or posedge rst)
//   begin
//     if (rst)
//     begin
//       dout <= 1'b1; // Set dout high on reset (idle state)
//     end
//     else
//     begin
//       case (current_state)
//         IDLE:
//         begin
//           dout <= 1'b1; // Idle state sends high
//         end
//         START:
//         begin
//           dout <= 1'b0; // Send start bit (low)
//         end
//         DATA:
//         begin
//           dout <= shift_reg[bit_index]; // Send data bits one by one
//         end
//         STOP:
//         begin
//           dout <= 1'b1; // Send stop bit (high)
//         end
//         default:
//         begin
//           dout <= 1'b1; // Fallback case, should not occur
//         end
//       endcase
//     end
//   end

endmodule
