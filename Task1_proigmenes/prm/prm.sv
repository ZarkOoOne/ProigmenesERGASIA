module prm(input logic D,A,E,F,
                output logic [3:0]y);

    always_comb begin
    y = 4'b0000;
    if (D)
        y = 4'b1000;
        else if (A) 
            y = 4'b0100;
        else if (E) 
            y = 4'b0010;
        else if (F) 
            y= 4'b0001;
    end
endmodule 