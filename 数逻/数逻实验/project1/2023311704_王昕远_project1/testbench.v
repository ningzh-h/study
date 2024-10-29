
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/11 11:01:19
// Design Name: 
// Module Name: testbench
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


// module testbench(

//     );
// endmodule
`timescale 1ns / 1ps

module testbench(

);

    reg clk;
    reg clr;
    reg en;
    reg [7:0] d;
    reg [2:0] wsel;
    reg [2:0] rsel;
    
    wire [7:0] q;

    reg8file my_regfile (
        .clk(clk),
        .clr(clr),
        .en(en),
        .d(d),
        .wsel(wsel),
        .rsel(rsel),
        .q(q)
    );

    always #5 clk = ~clk; 
    
    initial begin
        clk = 0;
        clr = 1;
        en = 0;
        d = 8'b0;
        wsel = 3'b0;
        rsel = 3'b0;

        #10 clr = 0; 
        
        #10 en = 1;
            d = 8'b00100010;
            wsel = 3'b110; 
        #10 en = 0;
        
        #10 en = 1;
            d = 8'b10010001;
            wsel = 3'b011; 
        #10 en = 0;
        
        #10 rsel = 3'b110;
            d = 8'd0;
            wsel = 3'b000;
        #10;

        #10 rsel = 3'b011; 
        #10;

        #10 clr = 1;
            
        #10 clr = 0;
            rsel = 3'b000;

        #10 rsel = 3'b110;
        #10;

        #10 rsel = 3'b011;
        #10;

        #20 $finish;
    end

endmodule
