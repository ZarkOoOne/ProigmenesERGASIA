module fa1bit(input logic a, b, cin,
 output logic s, cout);
logic p, g; // Εσωτερικοί κόμβοι 1-bit
 assign p = a ^ b;
 assign g = a & b;

 assign s = p ^ cin;
 assign cout = g | (p & cin);
endmodule