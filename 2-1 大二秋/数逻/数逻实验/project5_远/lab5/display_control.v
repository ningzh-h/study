`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2024/11/08 17:11:41
// Design Name:
// Module Name: display_control
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


module display_control(
    input wire clk,           // 时钟信号
    input wire rst,           // 复位信号
    input wire valid,
    input wire [7:0] rx_data,
    output reg [7:0] led_en,
    output reg [7:0] led_cx
  );

  reg [4:0] buffer [7:0];  // 存储最近接收的8个字符
  reg [4:0] data_former;
  reg [4:0] data_latter;
  wire [7:0] seg_data [7:0];  // 8 位数码管输出数据

  // 更新显示缓存
  reg [10:0] count;
  reg [1:0] data_flag;
  integer i,n,s;
  always @(posedge clk or posedge rst)
  begin
    if (rst)
    begin
      // 复位时清空缓存
      data_flag <= 0;
      data_former <= 5'h1f;
      data_latter <= 5'h1f;
      count <= 0;
      for (i = 0; i < 8; i = i + 1)
      begin
        buffer[i] <= 5'h1f;
      end
    end
    else if (valid)
    begin
      data_former <= rx_data[7:4];
      data_latter <= rx_data[3:0];
      data_flag <= 1;

    end
    else if (data_flag)
    begin
      for (n = 7; n - 1 > 0; n = n - 1)
      begin
        buffer[n] <= buffer[n-2];
      end
      count <= count +1;
      buffer[1] <= data_former;
      buffer[0] <= data_latter;
      data_flag <= 0;
    end
  end

  // always @(posedge clk or posedge rst)
  // begin
  //   if (cnt == 1) begin
  //     count <= count +1;
  //   end
  // end



  // reg [4:0] buffer [7:0];  // 存储最近接收的8个字符
  // wire [4:0] data_former, data_latter;
  // wire [7:0] seg_data [7:0];  // 8 位数码管输出数据
  // assign data_former = rx_data[7:4];
  // assign data_latter = rx_data[3:0];
  // reg [3:0] count;
  // integer i,n;

  // always @(*) begin
  //   // 检测复位信号
  //   if (rst) begin
  //     for (i = 0; i < 8; i = i + 1) begin
  //       buffer[i] = 5'h1f;
  //     end
  //     count = 0;
  //   end else if (valid) begin
  //     // 右移缓存数据并插入新数据
  //     for (n = 7; n > 1; n = n - 1) begin
  //       buffer[n] = buffer[n-2];
  //     end
  //     buffer[1] = data_former;
  //     buffer[0] = data_latter;
  //     count = count + 1;
  //   end
  // end



  // 数码管显示控制

  genvar q;
  generate
    for (q = 0;q<8 ;q=q+1 )
    begin:display_transfor_inst
      dlsplay_transfor u_display_transfor(
                         //  .flag(flag[q]),
                         .digit(buffer[q]),
                         .segment(seg_data[q])
                       );
    end
  endgenerate
  // always @(*)
  // begin
  //   for (i = 0; i < 8; i = i + 1)
  //     begin
  //       display_transfor_u.flag <= flag[i];
  //       display_transfor_u.digit <= buffer[i];
  //       seg_data[i] <= display_transfor_u.segment[i];
  //     end
  // end


  // 状态寄存器，用于轮询每个数码管
  reg [2:0] pos;
  reg [23:0] counter;

  // 时钟分频计数器，用于设置刷新频率
  // 2ms -> 500Hz = 100MHz / 200000 , 则 TIMER_MAX = 200000 - 1 = 199999
  localparam REFRESH_RATE = 200000 - 1;

  always @(posedge clk or posedge rst)
  begin
    if (rst)
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
  always @(posedge clk or posedge rst)
  begin
    if (rst)
    begin
      led_cx = 8'b11111111;
    end
    else
    begin
      led_cx = seg_data[pos];
    end
  end

  // 根据当前状态选择数码管
  always @(posedge clk or posedge rst)
  begin
    if (rst)
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
