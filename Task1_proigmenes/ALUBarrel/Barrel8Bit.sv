module Barrel8bit(input logic[7:0] a,input logic[2:0] amt,
						input logic[1:0]oppbarrel,output logic[7:0] Result);

logic[7:0] LSL,LSR,ASR,ROR;

always_comb begin
 LSL = a << amt;

 LSR = a >> amt;

 case(amt)
3'b000: ASR = a;
3'b001: ASR = {a[7], a[7], a[6], a[5], a[4], a[3], a[2], a[1]};
3'b010: ASR = {a[7], a[7], a[7], a[6], a[5], a[4], a[3], a[2]};
3'b011: ASR = {a[7], a[7], a[7], a[7], a[6], a[5], a[4], a[3]};
3'b100: ASR = {a[7], a[7], a[7], a[7], a[7], a[6], a[5], a[4]};
3'b101: ASR = {a[7], a[7], a[7], a[7], a[7], a[7], a[6], a[5]};
3'b110: ASR = {a[7], a[7], a[7], a[7], a[7], a[7], a[7], a[6]};
3'b111: ASR = {a[7], a[7], a[7], a[7], a[7], a[7], a[7], a[7]};
default: ASR = 'bx;
endcase
 ROR = (a >> amt) | (a << 8 - amt);

 case(oppbarrel)
 2'b00: Result=LSR;
 2'b01: Result=LSL;
 2'b10: Result=ROR;
 2'b11: Result=ASR;
 default Result='bx;
 endcase
end
endmodule