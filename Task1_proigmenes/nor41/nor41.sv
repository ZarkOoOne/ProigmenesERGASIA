module nor41 (input logic a,b,c,d,
              output logic q);

assign q = ~(a | b | c | d);

endmodule 