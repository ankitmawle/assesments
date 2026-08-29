`timescale 1ns/1ps

module tb;

    reg clk = 1'b0;
    reg reset = 1'b1;
    reg din = 1'b0;
    wire detected;

    sequence_detector dut (
        .clk(clk),
        .reset(reset),
        .din(din),
        .detected(detected)
    );

    always #7 clk = ~clk;

    // Assessment instance: 24eg104c36

    task drive_bit(input reg b);
        begin
            @(negedge clk);
            din = b;
            @(posedge clk);
            #1;
            $display("TIME=%0t NS DIN=%b DETECTED=%b", $time, din, detected);
        end
    endtask

    integer detection_count = 0;

    always @(negedge clk) begin
        if (!reset && detected)
            detection_count = detection_count + 1;
    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tb);

        // Initial reset.
        reset = 1'b1;
        repeat (2) @(posedge clk);
        @(negedge clk);
        reset = 1'b0;

        drive_bit(1'b1);
        drive_bit(1'b0);
        drive_bit(1'b1);
        drive_bit(1'b1);
        drive_bit(1'b1);
        drive_bit(1'b1);
        drive_bit(1'b0);
        drive_bit(1'b1);
        drive_bit(1'b0);
        drive_bit(1'b0);
        drive_bit(1'b0);
        drive_bit(1'b0);
        drive_bit(1'b1);
        drive_bit(1'b0);
        drive_bit(1'b0);
        drive_bit(1'b1);
        drive_bit(1'b1);
        drive_bit(1'b1);
        drive_bit(1'b1);
        drive_bit(1'b1);
        drive_bit(1'b0);
        drive_bit(1'b1);
        drive_bit(1'b0);
        drive_bit(1'b0);
        drive_bit(1'b1);
        drive_bit(1'b1);
        drive_bit(1'b0);
        drive_bit(1'b0);
        drive_bit(1'b0);
        drive_bit(1'b0);
        drive_bit(1'b0);
        drive_bit(1'b1);
        drive_bit(1'b0);
        drive_bit(1'b0);
        drive_bit(1'b0);
        drive_bit(1'b1);
        drive_bit(1'b1);
        drive_bit(1'b1);
        drive_bit(1'b1);
        drive_bit(1'b1);
        drive_bit(1'b1);
        drive_bit(1'b0);
        drive_bit(1'b0);
        drive_bit(1'b1);
        drive_bit(1'b1);
        drive_bit(1'b1);
        drive_bit(1'b1);
        drive_bit(1'b0);
        drive_bit(1'b1);
        drive_bit(1'b0);
        drive_bit(1'b0);
        drive_bit(1'b1);
        drive_bit(1'b0);
        drive_bit(1'b1);
        drive_bit(1'b0);
        drive_bit(1'b1);
        drive_bit(1'b1);
        drive_bit(1'b1);
        drive_bit(1'b0);
        drive_bit(1'b0);
        drive_bit(1'b1);
        drive_bit(1'b1);
        drive_bit(1'b1);
        drive_bit(1'b1);
        drive_bit(1'b1);
        drive_bit(1'b0);
        drive_bit(1'b0);
        drive_bit(1'b0);
        drive_bit(1'b0);
        drive_bit(1'b1);
        drive_bit(1'b1);
        drive_bit(1'b0);
        drive_bit(1'b1);
        drive_bit(1'b0);
        drive_bit(1'b1);
        drive_bit(1'b1);
        drive_bit(1'b1);
        drive_bit(1'b0);
        drive_bit(1'b0);
        drive_bit(1'b1);
        drive_bit(1'b0);
        drive_bit(1'b0);
        drive_bit(1'b1);
        drive_bit(1'b0);
        drive_bit(1'b1);
        drive_bit(1'b0);
        drive_bit(1'b1);
        drive_bit(1'b0);
        drive_bit(1'b0);
        drive_bit(1'b1);
        drive_bit(1'b0);
        drive_bit(1'b0);
        drive_bit(1'b0);
        drive_bit(1'b0);
        drive_bit(1'b0);
        drive_bit(1'b0);
        drive_bit(1'b1);
        drive_bit(1'b1);
        drive_bit(1'b0);
        drive_bit(1'b1);
        drive_bit(1'b0);
        drive_bit(1'b1);
        drive_bit(1'b1);
        drive_bit(1'b1);
        drive_bit(1'b0);
        drive_bit(1'b1);
        drive_bit(1'b1);
        drive_bit(1'b1);
        drive_bit(1'b1);
        drive_bit(1'b0);
        drive_bit(1'b1);
        drive_bit(1'b1);
        drive_bit(1'b1);
        drive_bit(1'b1);
        drive_bit(1'b0);
        drive_bit(1'b1);
        drive_bit(1'b1);
        drive_bit(1'b0);
        drive_bit(1'b1);
        drive_bit(1'b1);
        drive_bit(1'b1);
        drive_bit(1'b1);
        drive_bit(1'b0);
        drive_bit(1'b1);
        drive_bit(1'b0);
        drive_bit(1'b1);
        drive_bit(1'b1);
        drive_bit(1'b0);
        drive_bit(1'b1);
        drive_bit(1'b0);
        drive_bit(1'b0);
        drive_bit(1'b0);
        drive_bit(1'b0);
        drive_bit(1'b1);
        drive_bit(1'b0);
        drive_bit(1'b1);
        drive_bit(1'b0);
        drive_bit(1'b0);
        drive_bit(1'b0);
        drive_bit(1'b1);
        drive_bit(1'b1);
        drive_bit(1'b1);
        drive_bit(1'b1);
        drive_bit(1'b0);
        drive_bit(1'b1);
        drive_bit(1'b1);
        drive_bit(1'b1);
        drive_bit(1'b0);
        drive_bit(1'b0);
        drive_bit(1'b1);
        drive_bit(1'b0);
        drive_bit(1'b0);
        drive_bit(1'b1);
        drive_bit(1'b0);
        drive_bit(1'b0);
        drive_bit(1'b0);
        drive_bit(1'b1);
        drive_bit(1'b1);
        drive_bit(1'b1);
        drive_bit(1'b0);
        drive_bit(1'b1);
        drive_bit(1'b1);
        drive_bit(1'b0);
        drive_bit(1'b1);
        drive_bit(1'b1);
        drive_bit(1'b1);
        drive_bit(1'b1);
        drive_bit(1'b0);
        drive_bit(1'b1);
        drive_bit(1'b1);
        drive_bit(1'b1);
        drive_bit(1'b0);
        drive_bit(1'b0);
        drive_bit(1'b1);
        drive_bit(1'b1);
        drive_bit(1'b1);
        drive_bit(1'b0);
        drive_bit(1'b0);
        drive_bit(1'b0);
        drive_bit(1'b0);

        // Final reset.
        @(negedge clk);
        reset = 1'b1;
        repeat (2) @(posedge clk);

        #1;
        $display("FINAL_DETECTION_COUNT=%0d", detection_count);
        $finish;
    end

endmodule
