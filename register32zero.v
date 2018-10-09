// 32-bit D Flip-Flop with enable outputs zero

module register32zero
(
output[31:0]	q,
input[31:0]		d,
input		wrenable,
input		clk
);

  // register register(output[0], input[0], wrenable, clk);
  // output[0] = 0;

  wire[31:0] out = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
  assign q = out;

  // genvar i;
  // generate
  //   for (i=1; i<32; i=i+1)
  //   begin:genblock
  //     register register(output[i], input[i], wrenable, clk);
  //     output[1] = 0;
  //   end
  // endgenerate


endmodule
