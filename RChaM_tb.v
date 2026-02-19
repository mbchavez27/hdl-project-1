// Name: Max Benedict Chavez, Section: S18
`timescale 1ns / 1ps 


module behavior_model_tb();
    reg[3:0] t_input; 
    wire t_F;
    integer i; 

    circuit_behavior dut (
        .F(t_F), 
        .A(t_input[3]), 
        .B(t_input[2]), 
        .C(t_input[1]), 
        .D(t_input[0])
    );

    initial begin
        $display("Name: Max Benedict Chavez");
        $display("Boolean Function: F(A,B,C,D) = πM(0,1,2,8,10,12,14)");
        $display("Model: Behavioral");
        
        $monitor("time = %0d \t A = %b B = %b C = %b D = %b \t F = %b", $time, t_input[3], t_input[2], t_input[1], t_input[0], t_F);
        
        $dumpfile("RChaM.vcd");
        $dumpvars(0, behavior_model_tb);
    end

    initial begin
        t_input = 4'b0000;

        for (i = 1; i <= 15; i = i + 1) begin 
            #10 t_input = i;
        end

        #10 t_input = 4'b0000;

        #10 $finish;
    end

endmodule

