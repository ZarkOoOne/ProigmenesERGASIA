module alunbit #(parameter n = 8)
(input logic [n-1:0] a,b,
input logic ALUControl,
output logic [n-1:0] Result,
output logic N,Z,C,V );

logic [n-1:0] condinvb;
logic [n:0] sum;
logic [3:0]ALUFlags;
assign condinvb = ALUControl ? ~b : b;
assign sum = a + condinvb + ALUControl;
always_comb
    casex (ALUControl)
     2'b0?: Result = sum;
     2'b10: Result = a & b;
     2'b11: Result = a | b;
      default: Result = 'bx;
   endcase

    always_comb begin
    ALUFlags[0] = (Result == 4'b0000);
    ALUFlags[1] = Result[3];
    ALUFlags[2] = Result[4];
    if (ALUControl == 1'b0) begin
            // Στην πρόσθεση, υπάρχει overflow αν τα πιο σημαντικά bits του a και b είναι ίδια και το αποτέλεσμα έχει αντίθετο πρόσημο
            ALUFlags[3] = (a[n-1] == b[n-1]) && (Result[n-1] != a[n-1]);
        end else begin
            // Στην αφαίρεση, υπάρχει overflow αν τα πιο σημαντικά bits του a και b είναι διαφορετικά και το αποτέλεσμα έχει το ίδιο πρόσημο με το a
            ALUFlags[3] = (a[n-1] != b[n-1]) && (Result[n-1] == a[n-1]);
        end
    end
    assign Z = ALUFlags[0];
    assign N = ALUFlags[1];
    assign C = ALUFlags[2];
    assign V = ALUFlags[3];
endmodule