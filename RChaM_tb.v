`timescale 1ns / 1ps 


module behavior_model_tb():
    reg[3:0] t_input; 
    wire t_F;
    integer i; 

    circuit_behavior(t_F, t_input[3], t_input[2], t_input[1], t_input[0]);

    initial begin
        t_input = 4'b0000;

        for(i = 1; i<16; i=i+1)
            begin 
                #30 t_input = i;
            end 
    end

    initial begin
         $display("Written by Max Benedict Chavez");
         $monitor("$monitor("time = %0d ", $time, "A = %b B = %b C = %b D = %b output_F = %b", 
                     t_input[3], t_input[2], t_input[1], t_input[0], t_F);")
         $dumpfile("RChaM.vcd");
         $dumpvars();
    end

endmodule

