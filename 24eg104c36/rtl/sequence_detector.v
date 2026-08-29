`timescale 1ns/1ps

module sequence_detector (
    input  wire clk,
    input  wire reset,
    input  wire din,
    output reg  detected
);

    localparam integer STATE_W = 3;
    localparam integer NUM_STATES = 7;
    // Target sequence: 0111101

    reg [STATE_W-1:0] state;
    reg [STATE_W-1:0] next_state;
    reg next_detected;

    always @(*) begin
        next_state = 'd0;
        next_detected = 1'b0;
        case (state)
            0: begin
                if (din == 1'b0) begin
                    next_state = 1;
                    next_detected = 1'b0;
                end else begin
                    next_state = 0;
                    next_detected = 1'b0;
                end
            end
            1: begin
                if (din == 1'b0) begin
                    next_state = 1;
                    next_detected = 1'b0;
                end else begin
                    next_state = 2;
                    next_detected = 1'b0;
                end
            end
            2: begin
                if (din == 1'b0) begin
                    next_state = 1;
                    next_detected = 1'b0;
                end else begin
                    next_state = 3;
                    next_detected = 1'b0;
                end
            end
            3: begin
                if (din == 1'b0) begin
                    next_state = 1;
                    next_detected = 1'b0;
                end else begin
                    next_state = 4;
                    next_detected = 1'b0;
                end
            end
            4: begin
                if (din == 1'b0) begin
                    next_state = 1;
                    next_detected = 1'b0;
                end else begin
                    next_state = 5;
                    next_detected = 1'b0;
                end
            end
            5: begin
                if (din == 1'b0) begin
                    next_state = 6;
                    next_detected = 1'b0;
                end else begin
                    next_state = 0;
                    next_detected = 1'b0;
                end
            end
            6: begin
                if (din == 1'b0) begin
                    next_state = 1;
                    next_detected = 1'b0;
                end else begin
                    next_state = 2;
                    next_detected = 1'b1;
                end
            end
            default: begin
                next_state = 'd0;
                next_detected = 1'b0;
            end
        endcase
    end

    always @(posedge clk) begin
        if (reset) begin
            state <= 'd0;
            detected <= 1'b0;
        end else begin
            state <= next_state;
            detected <= next_detected;
        end
    end

endmodule
