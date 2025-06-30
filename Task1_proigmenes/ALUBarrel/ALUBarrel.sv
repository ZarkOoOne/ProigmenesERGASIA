module ALUBarrel #(parameter Num=8)
	(input logic[Num-1:0] Rn,Rm,input logic[2:0] amt,
	 input logic[1:0] opbarrel, ALUControl,
	 output logic[Num-1:0] Rd,output logic N, Z, V, C, HS, LS, HI, LO, GE, LE, GT, LT);

logic[3:0] ALUFlags;
logic[7:0] BarrelOut;

Barrel8bit barrel(Rm[Num-1:0],amt[2:0],opbarrel[1:0],BarrelOut[7:0]);

alunbit #(Num) ALU(Rn[Num-1:0],BarrelOut[7:0],ALUControl[1:0],Rd[Num-1:0],ALUFlags[3:0]);

CompFlags Flags(ALUFlags[0], ALUFlags[1], ALUFlags[2],
					 ALUFlags[3], HS, LS, HI, LO, GE, LE, GT, LT);
					 
assign C = ALUFlags[0];
assign N = ALUFlags[1];
assign V = ALUFlags[2];
assign Z = ALUFlags[3];

endmodule 