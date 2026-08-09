```verilog
`timescale 1ns/1ps

module register_8bit_tb;

    reg        clk;
    reg        reset;
    reg [7:0]  data_in;
    wire [7:0] data_out;

    // Instantiate the 8-bit register
    register_8bit uut (
        .clk(clk),
        .reset(reset),
        .data_in(data_in),
        .data_out(data_out)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin

        // Create waveform file
        $dumpfile("register_8bit.vcd");
        $dumpvars(0, register_8bit_tb);

        // Initialize signals
        clk = 0;
        reset = 1;
        data_in = 8'b00000000;

        $display("Time | Reset | Data In  | Data Out");
        $display("-----------------------------------");

        // Reset register
        #10;
        $display("%4t |   %b   | %b | %b",
                 $time, reset, data_in, data_out);

        // Store first value
        reset = 0;
        data_in = 8'b10101010;
        #10;
        $display("%4t |   %b   | %b | %b",
                 $time, reset, data_in, data_out);

        // Store second value
        data_in = 8'b11001100;
        #10;
        $display("%4t |   %b   | %b | %b",
                 $time, reset, data_in, data_out);

        // Store third value
        data_in = 8'b11110000;
        #10;
        $display("%4t |   %b   | %b | %b",
                 $time, reset, data_in, data_out);

        // Apply reset again
        reset = 1;
        #10;
        $display("%4t |   %b   | %b | %b",
                 $time, reset, data_in, data_out);

        $finish;
    end

endmodule
```
