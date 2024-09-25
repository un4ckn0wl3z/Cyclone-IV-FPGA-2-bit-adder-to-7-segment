module adder_nbit#( parameter N = 2)(
    input [N-1:0] a,
    input [N-1:0] b,
    output reg [N:0] sum );

    always @(*) begin
        sum[N:0] = a[N-1:0] + b[N-1:0];
    end
    
endmodule