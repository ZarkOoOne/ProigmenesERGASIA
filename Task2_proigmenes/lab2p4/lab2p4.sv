module lab2p4(input logic D,clk,
		output logic Qa,Qb,Qc);
		
		dalwlatch latchD(D,clk,Qa);
		pedff dffP(D,clk,Qb);
		nedff dffN(D,clk,Qc);
		
endmodule

