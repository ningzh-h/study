`timescale 1ns / 1ps
`define BASIC_TEST_NUM 10
`define TEST_NUM       22

module fpu_tb();

    reg rst = 1'b1;
    reg clk = 1'b0;

    reg         start;
    reg         op;     // 0 for addition, 1 for substraction
    reg  [31:0] num1;
    reg  [31:0] num2;

    wire        ready;
    wire [31:0] result;

    reg [ 7:0] cnt;
    reg        mem_op   [`TEST_NUM-1:0];
    reg [31:0] mem_num1 [`TEST_NUM-1:0];
    reg [31:0] mem_num2 [`TEST_NUM-1:0];
    shortreal  mem_ans  [`TEST_NUM-1:0];

    integer fid, i;

    reg error_flag = 1'b0;
    reg test_end   = 1'b0;

    shortreal answer;
    reg [31:0] h_answer;
    shortreal diff;
    shortreal r_num1, r_num2, r_res;

    initial begin
        rst = 1'b1;
        clk = 1'b0;
        $readmemb("mem_op.txt", mem_op);
        $readmemh("mem_num1.txt", mem_num1);
        $readmemh("mem_num2.txt", mem_num2);
        fid = $fopen("mem_ans.txt", "r");
        for (i = 0; i < `TEST_NUM; i++)
            $fscanf(fid, "%g", mem_ans[i]);

        #13
        rst = 1'b0;
    end

    always #5 clk = !clk;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            cnt <= 8'h0;
            start <= 1'b0;
        end else begin
            cnt <= start ? cnt + 8'h1 : cnt;

            if (ready & !start) begin
                start <= 1'b1;
                op    <= mem_op[cnt];
                num1  <= mem_num1[cnt];
                num2  <= mem_num2[cnt];
            end else begin
                start <= 1'b0;
            end
        end
    end

    function shortreal fabs(shortreal n);
        return n >= 0 ? n : -n;
    endfunction

    function string ftos(shortreal n);
        shortreal th1 = 1e6, th2 = 1e-6;
        return (fabs(n) > th1 || fabs(n) < th2) ? $sformatf("%.6e", n) : $sformatf("%f", n);
    endfunction

    always @(*) begin
        answer   = mem_ans[cnt - 8'h1];
        r_num1   = $bitstoshortreal(num1);
        r_num2   = $bitstoshortreal(num2);
        r_res    = $bitstoshortreal(result);

        h_answer = $shortrealtobits(answer);
        if (h_answer[30:0] == 31'h0)        // +0 or -0
            diff = fabs(answer - r_res);
        else
            diff = fabs(answer - r_res) / fabs(answer);
    end

    always @(posedge clk) begin
        if (ready & !start & (cnt > 8'h0))
            if (diff > shortreal'(1e-5)) begin
                error_flag = 1'b1;
                if (!mem_op[cnt - 1]) begin
                    $display("[ERROR] reference:\t%s + %s = %s", ftos(r_num1), ftos(r_num2), ftos(answer));
                    $display("[ERROR] but yours:\t%s + %s = %s", ftos(r_num1), ftos(r_num2), ftos(r_res));
                end else begin
                    $display("[ERROR] reference:\t%s - %s = %s", ftos(r_num1), ftos(r_num2), ftos(answer));
                    $display("[ERROR] but yours:\t%s - %s = %s", ftos(r_num1), ftos(r_num2), ftos(r_res));
                end
                $display("Test %d failed", cnt);
                #12 $finish;
            end else begin
                $display("Test %d passed", cnt);
                if (cnt == `BASIC_TEST_NUM)
                    $display("Basic tests passed");
                if (cnt == `TEST_NUM) begin
                    test_end = 1'b1;
                    $display("All tests passed");
                    #12 $finish;
                end
            end
    end

    fpu DUT (
        .rst    (rst),
        .clk    (clk),
        .start  (start),
        .op     (op),
        .A      (num1),
        .B      (num2),
        .ready  (ready),
        .C      (result)
    );

endmodule
