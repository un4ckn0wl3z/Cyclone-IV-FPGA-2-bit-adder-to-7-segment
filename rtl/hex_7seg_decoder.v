module hex_7seg_decoder#(parameter COMMON_ANODE_CATHODE = 0) (
    input [2:0] in,
    output o_a,
    output o_b,
    output o_c,
    output o_d,
    output o_e,
    output o_f,
    output o_g
    // output o_dot
    );

    reg a,b,c,d,e,f,g;

    always @(*) begin
        case (in)
            3'b000    :   {a,b,c,d,e,f,g}     = 7'b1111110; 
            3'b001    :   {a,b,c,d,e,f,g}     = 7'b0110000;
            3'b010    :   {a,b,c,d,e,f,g}     = 7'b1101101;
            3'b011    :   {a,b,c,d,e,f,g}     = 7'b1111001;
            3'b100    :   {a,b,c,d,e,f,g}     = 7'b0110011;
            3'b101    :   {a,b,c,d,e,f,g}     = 7'b1011011;
            3'b110    :   {a,b,c,d,e,f,g}     = 7'b1011111;
            3'b111    :   {a,b,c,d,e,f,g}     = 7'b1110000;
            default :   {a,b,c,d,e,f,g}     = 7'b1111110;
        endcase
    end

    assign {o_a, o_b, o_c, o_d, o_e, o_f, o_g} = COMMON_ANODE_CATHODE ? {a,b,c,d,e,f,g} : ~{a,b,c,d,e,f,g};

    // assign o_dot = 1'b1;
    
endmodule