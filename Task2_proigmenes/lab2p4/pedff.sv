module pedff(input logic D,clk,
				 output logic Q);
				 
		always_ff @(posedge clk)
			Q <= D;
endmodule
