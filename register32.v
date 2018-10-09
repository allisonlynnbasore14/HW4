// 32-bit D Flip-Flop with enable
// Positive edge triggered
`include "register.v"

module register32
(
output[31:0]	q,
input[31:0]		d,
input		wrenable,
input		clk
);

  register register(output[0], input[0], wrenable, clk);

  genvar i;
  generate
    for (i=1; i<32; i=i+1)
    begin:genblock
      register register(output[i], input[i], wrenable, clk);
    end
  endgenerate

endmodule