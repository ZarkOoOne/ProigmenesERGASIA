module farc4bit( input logic [3:0]a,
                      input logic [3:0]b,
                      input logic cin,
                      output logic [3:0] sum,
                      output logic cout);
                
logic [3:0] carry;

fa1bit f0 (
.a (a[0]),
.b(b[0]),
.cin(cin),
.s (sum[0]),
.cout(carry[0]));

fa1bit f1 (
.a (a[1]),
.b(b[1]),
.cin(carry[0]),
.s (sum[1]),
.cout(carry[1]));

fa1bit f2 (
.a (a[2]),
.b(b[2]),
.cin(carry[1]),
.s (sum[2]),
.cout(carry[2]));

fa1bit f3 (
.a (a[3]),
.b(b[3]),
.cin(carry[2]),
.s (sum[3]),
.cout(carry[3]));

assign cout = carry[3];

endmodule 