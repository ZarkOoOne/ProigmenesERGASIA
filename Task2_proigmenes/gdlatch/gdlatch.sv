module gdlatch (input logic D,
		  input logic clk,
		 output logic Qa,Qb);
logic R,R_g,S,S_g;
assign S = D;
assign R = ~D;
assign R_g = ~(R && clk);
assign S_g = ~(S && clk);
assign Qa = ~(S_g && Qb);
assign Qb = ~(R_g && Qa);
endmodule
