module nedff(input logic D,clk,
	          output logic Q);
				 
		always_ff @(negedge clk)
		  Q <= D;
endmodule
