module sevensegprm ( input logic D,A,E,F,
                            output logic a,b,c,d,e,f,g);

    logic [3:0]y;
    logic [6:0]seg;
    prm prm1(D,A,E,F,y);
    
    always_comb begin 
    seg = 7'b111_1111;
    case (y)
        4'b0001: seg = 7'b100_0111; //F
        4'b0010: seg = 7'b100_1111; //E
        4'b0100: seg = 7'b111_0111; //A
        4'b1000: seg = 7'b011_0111; //d
        default: seg = 7'b000_0000; //reset
    endcase
    a = seg[0];
    b = seg[1];
    c = seg[2];
    d = seg[3];
    e = seg[4];
    f = seg[5];
    g = seg[6];
    end
endmodule