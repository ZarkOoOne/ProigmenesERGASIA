module msdff (input logic D,
				  input logic clk,
				  output logic Q,
				  output logic Qn);
logic Qm,nclk;
assign nclk = ~clk;
gdlatch Master(D,nclk,Qm);
gdlatch Slave(Qm,clk,Q,Qn);
endmodule
