`timescale  1ns /1ps

module circuit_behavior(F,A,B,C,D):
    input A,B,C,D;
    output reg F; 

    always @(A,B,C,D)
    begin 
        case({A,B,C,D})
            4'd0, 4'd1, 4'd2, 4'd8, 4'd10, 4'd12, 4'd14:
                F = 1'b0;
            default:
                F = 1'b1
        endcase
    end 
endmodule

