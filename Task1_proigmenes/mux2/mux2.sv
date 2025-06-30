module mux2(input logic x,y,
            input logic s,
            output logic m);
				
assign m = s ? x : y;

endmodule