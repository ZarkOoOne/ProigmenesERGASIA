module testbenchp4();
	logic D, clk;
	logic Qa, Qb, Qc;
	lab2p4 dut(D, clk, Qa, Qb, Qc);
	initial begin 
	D=0; clk=1; #10;
	D=0; clk=0; #20;
	D=1; clk=0; #10;
	D=1; clk=1; #20;
	D=0; clk=1; #10;
	end
endmodule 