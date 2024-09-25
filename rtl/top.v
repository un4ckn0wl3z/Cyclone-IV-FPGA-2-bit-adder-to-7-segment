module top#(parameter N = 2) (
    input   [N-1:0] i_a,
    input   [N-1:0] i_b,
	 output 	[N:0] o_sum,
    output  [6:0]   o_HEX);
	 

    adder_nbit#(.N(N))
    ADD0
    (
        .a(~i_a),
        .b(~i_b),
        .sum(o_sum)
    );


    hex_7seg_decoder#(.COMMON_ANODE_CATHODE(1))
    DEC0
    (
        .in(o_sum),
        .o_a(o_HEX[0]),
        .o_b(o_HEX[1]),
        .o_c(o_HEX[2]),
        .o_d(o_HEX[3]),
        .o_e(o_HEX[4]),
        .o_f(o_HEX[5]),
        .o_g(o_HEX[6])
    );
    
endmodule