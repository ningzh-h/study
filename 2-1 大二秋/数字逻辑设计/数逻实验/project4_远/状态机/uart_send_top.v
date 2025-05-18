// `timescale 1ns / 1ps

module uart_send_top (
    input wire clk,               // 系统时钟
    input wire rst,               // 复位信号
    output wire tx              // UART发送输出
  );

  // 参数设置
  parameter CHAR_DELAY = 10000000;   // 0.1秒的字符间隔计数值

  // 学生ID以ASCII形式编码
  reg [7:0] student_id [0:9];
  reg [4:0] char_index = 0;         // 当前字符的索引
  reg [31:0] delay_counter = 0;     // 计时器用于0.1秒延迟
  reg valid = 0;                    // 数据有效信号
  reg [7:0] data =0 ;

  initial
  begin
    student_id[0] = 8'b00110010; // '2'
    student_id[1] = 8'b00110000; // '0'
    student_id[2] = 8'b00110010; // '2'
    student_id[3] = 8'b00110011; // '3'
    student_id[4] = 8'b00110011; // '3'
    student_id[5] = 8'b00110001; // '1'
    student_id[6] = 8'b00110001; // '1'
    student_id[7] = 8'b00111000; // '7'
    student_id[8] = 8'b00110000; // '0'
    student_id[9] = 8'b00110100; // '4'
  end

  // UART发送模块实例化
  uart_send uart_send_inst (
              .clk(clk),
              .rst(rst),
              .valid(valid),
              .data(data),
              .dout(tx)
            );

  // always #5 clk = ~clk;

  // 状态机实现
  always @(posedge clk or posedge rst)
  begin
    if (rst)
    begin
      char_index <= 0;
      delay_counter <= 0;
      valid <= 0;
    end
    else
    begin
      if (delay_counter == CHAR_DELAY)
      begin
        // data <=
        data <= student_id[char_index];
        valid <= 1;
        delay_counter <= 0;
        if (char_index < 9)
        begin
          char_index <= char_index + 1;
        end
        else
        begin
          char_index <= 0;
        end


      end
      else if (valid)
      begin
        valid <= 0;  // 释放数据有效信号
      end

      else
      begin
        delay_counter <= delay_counter + 1;  // 计时0.1秒
      end

    end
  end

endmodule
