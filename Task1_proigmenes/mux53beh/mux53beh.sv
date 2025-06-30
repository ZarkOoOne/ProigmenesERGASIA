module mux53beh(input logic[2:0] u,v,w,x,y,s,
					 output logic[2:0]m);
always_comb
if (s==0) m = u;
else if (s==1) m = v;
else if (s==2) m = w;
else if (s==3) m = x;
else if (s==4) m = y;
else m = y;
endmodule 