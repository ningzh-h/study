`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2024/10/24 23:02:35
// Design Name:
// Module Name: led_display_ctrl
// Project Name:
// Target Devices:
// Tool Versions:
// Description:
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////

module led_display_ctrl(
    input wire clk,
    input wire [7:0] SW,
    input wire S1,
    input wire S2,
    input wire S3,
    output reg [7:0] led_en,
    output reg [7:0] led_cx
  );

  wire [7:0] cx [0:7];

  // 学号显示
  digit u_digit7(
              .digit(0),
              .segment(cx[7])
            );

  digit u_digit6(
              .digit(4),
              .segment(cx[6])
            );

  // 输入的 1 的个数
  wire [3:0] cnt_1 = SW[0] + SW[1] + SW[2] + SW[3] + SW[4] + SW[5] + SW[6] + SW[7];

  digit u_digit5(
              .digit(0),
              .segment(cx[5])
            );

  digit u_digit4(
              .digit(cnt_1),
              .segment(cx[4])
            );

  // S3 按键去抖动
  reg [15:0] debounce_shift_reg = 16'b0;
  wire debounced_S3;

  // Shift-register debounce circuit
  always @(posedge clk)
  begin
    debounce_shift_reg <= {debounce_shift_reg[14:0], S3};
  end

  // Debounced S3 is high only if all bits in debounce_shift_reg are 1's
  assign debounced_S3 = (debounce_shift_reg == 16'hFFFF) ? 1'b1 : 1'b0;

  // S3 计数 with debounced S3
  wire pos_edge;

  edge_detect u_edge_detect(
                .clk(clk),
                .rst(S1),
                .signal(debounced_S3), // Use debounced signal here
                .pos_edge(pos_edge)
              );

  reg [3:0] DK3, DK2;

  always @ (posedge clk or posedge S1)
  begin
    if(S1)
    begin
      DK3 = 0;
      DK2 = 0;
    end
    else if(pos_edge)
    begin
      if(DK2 == 9)
      begin
        DK2 = 0;
        DK3 = DK3 + 1;
      end
      else
      begin
        DK2 = DK2 + 1;
      end
    end
  end

  digit u_digit3(
              .digit(DK3),
              .segment(cx[3])
            );

  digit u_digit2(
              .digit(DK2),
              .segment(cx[2])
            );

  // 十进制计数器（0.1秒间隔，0-20）
  reg [25:0] timer;
  reg [3:0] DK1, DK0;
  reg [1:0] state; // 0: holding, 1: counting

  // 0.1s -> 10Hz = 100MHz / 10000000 , 则 TIMER_MAX = 10000000 - 1 = 9999999
  localparam TIMER_MAX = 10000000 - 1;

  always @(posedge clk or posedge S1)
  begin
    if (S1)
    begin // 复位直接开始计数
      timer = 0;
      DK1 = 0;
      DK0 = 0;
      state = 1; // 设置为计数状态
    end
    else
    begin
      if (state == 1)
      begin // 计数状态
        if (timer == TIMER_MAX)
        begin // 一次计数
          timer = 0;
          if (DK1 == 1 && DK0 == 9)
          begin
            DK1 = 2;
            DK0 = 0;
            state = 0; // 转换到保持状态
          end
          else
          begin
            if (DK0 == 9)
            begin
              DK0 = 0;
              DK1 = DK1 + 1;
            end
            else
            begin
              DK0 = DK0 + 1;
            end
          end
        end
        else
        begin
          timer = timer + 1;
        end
      end
      else
      begin // 保持状态
        if (S2)
        begin
          timer = 0;
          DK1 = 0;
          DK0 = 0;
          state = 1; // 设置为计数状态
        end
      end
    end
  end

  digit u_digit1(
              .digit(DK1),
              .segment(cx[1])
            );

  digit u_digit0(
              .digit(DK0),
              .segment(cx[0])
            );

  // 状态寄存器，用于轮询每个数码管
  reg [2:0] pos;
  reg [23:0] counter;

  // 时钟分频计数器，用于设置刷新频率
  // 2ms -> 500Hz = 100MHz / 200000 , 则 TIMER_MAX = 200000 - 1 = 199999
  localparam REFRESH_RATE = 200000 - 1;

  always @(posedge clk or posedge S1)
  begin
    if (S1)
    begin
      counter = 0;
      pos = 0;
    end
    else
    begin
      if (counter == REFRESH_RATE)
      begin
        counter = 0;
        pos = (pos == 7) ? 0 : pos + 1;
      end
      else
      begin
        counter = counter + 1;
      end
    end
  end

  // 根据当前状态设置段信号
  always @(posedge clk or posedge S1)
  begin
    if (S1)
    begin
      led_cx = 8'b11111111;
    end
    else
    begin
      led_cx = cx[pos];
    end
  end

  // 根据当前状态选择数码管
  always @(posedge clk or posedge S1)
  begin
    if (S1)
    begin
      led_en = 8'b11111111; // 复位时全部关闭
    end
    else
    begin
      case(pos)
        3'd0:
          led_en = 8'b11111110;
        3'd1:
          led_en = 8'b11111101;
        3'd2:
          led_en = 8'b11111011;
        3'd3:
          led_en = 8'b11110111;
        3'd4:
          led_en = 8'b11101111;
        3'd5:
          led_en = 8'b11011111;
        3'd6:
          led_en = 8'b10111111;
        3'd7:
          led_en = 8'b01111111;
      endcase
    end
  end

endmodule

//上升沿检测
module edge_detect(
    input wire clk,
    input wire rst,
    input wire signal,
    output wire pos_edge
  );

  reg sig_r0, sig_r1, sig_r2;

  always @ (posedge clk or posedge rst)
  begin
    if(rst)
      sig_r0 <= 0;
    else
      sig_r0 <= signal;
  end

  always @ (posedge clk or posedge rst)
  begin
    if(rst)
      sig_r1 <= 0;
    else
      sig_r1 <= sig_r0;
  end

  always @ (posedge clk or posedge rst)
  begin
    if(rst)
      sig_r2 <= 0;
    else
      sig_r2 <= sig_r1;
  end

  assign pos_edge = ~sig_r2 & sig_r1;

endmodule

//数码管显示译码
module digit(
    input wire [3:0] digit,
    output reg [7:0] segment
  );

  always @(*)
  begin
    case (digit)
      4'd0:
        segment = 8'b00000011; // 0
      4'd1:
        segment = 8'b10011111; // 1
      4'd2:
        segment = 8'b00100101; // 2
      4'd3:
        segment = 8'b00001101; // 3
      4'd4:
        segment = 8'b10011001; // 4
      4'd5:
        segment = 8'b01001001; // 5
      4'd6:
        segment = 8'b01000001; // 6
      4'd7:
        segment = 8'b00011111; // 7
      4'd8:
        segment = 8'b00000001; // 8
      4'd9:
        segment = 8'b00001001; // 9
      default:
        segment = 8'b11111110; // blank
    endcase
  end

endmodule
