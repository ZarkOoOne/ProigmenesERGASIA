module mux53 (input logic [2:0] u, v, w, x, y, 
              input logic [2:0] s, 
              output logic [2:0] m);
				  
logic [0:2] m_out1, m_out2, m_out3;

mux23 multi1(u,v,s[0],m_out1);
mux23 multi2(w,x,s[0],m_out2);
mux23 multi3(m_out1, m_out2, s[1], m_out3);
mux23 multi4(y, m_out3, s[2], m);
 
endmodule