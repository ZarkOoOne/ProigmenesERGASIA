module testbenchp5;

    parameter N = 32;

    logic [N-1:0] DataIn;
    logic clk, regWE, CLR;
    logic [N-1:0] DataOut;

    
    
	regN DUT(DataIn,clk,regWE,CLR,DataOut);
	always #15 clk = ~clk;
    initial begin
		  clk = 0;
        regWE = 0;
        CLR = 0;
        DataIn = 0;
        CLR = 1; #10; 
        CLR = 0; #10; 
        regWE = 1;
        DataIn = 32'hAB; #10; 
		  regWE = 0; 
        DataIn = 32'hFF; #10; 
    end
endmodule
