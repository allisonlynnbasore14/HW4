module mux32to1by32
(
output[31:0]  out,
input[4:0]    address,
input[31:0]   input0, input1, input2, input3, input4, input5, input6,input7, input8, input9, input10, input11, input12, input13, input14, input15, input16, input17, input18, input19, input20, input21, input22, input23, input24 input25, input26, input27, input28, input29, input30, input31
);

  wire[31:0] mux[31:0];			// Create a 2D array of wires
  assign mux[0] = input0;		// Connect the sources of the array

  wire[31:0] mux[31:0];
  assign mux[0] = input1;

  wire[31:0] mux[31:0];
  assign mux[0] = input2;

  wire[31:0] mux[31:0];
  assign mux[0] = input3;

  wire[31:0] mux[31:0];
  assign mux[0] = input4;

  wire[31:0] mux[31:0];
  assign mux[0] = input5;

  wire[31:0] mux[31:0];
  assign mux[0] = input6;

  wire[31:0] mux[31:0];
  assign mux[0] = input7;

  wire[31:0] mux[31:0];
  assign mux[0] = input8;

  wire[31:0] mux[31:0];
  assign mux[0] = input9;

  wire[31:0] mux[31:0];
  assign mux[0] = input10;

  wire[31:0] mux[31:0];
  assign mux[0] = input11;

  wire[31:0] mux[31:0];
  assign mux[0] = input12;

  wire[31:0] mux[31:0];
  assign mux[0] = input13;

  wire[31:0] mux[31:0];
  assign mux[0] = input14;

  wire[31:0] mux[31:0];
  assign mux[0] = input15;

  wire[31:0] mux[31:0];
  assign mux[0] = input16;

  wire[31:0] mux[31:0];
  assign mux[0] = input17;

  wire[31:0] mux[31:0];
  assign mux[0] = input18;

  wire[31:0] mux[31:0];
  assign mux[0] = input19;

  wire[31:0] mux[31:0];
  assign mux[0] = input20;

  wire[31:0] mux[31:0];
  assign mux[0] = input21;

  wire[31:0] mux[31:0];
  assign mux[0] = input22;

  wire[31:0] mux[31:0];
  assign mux[0] = input23;

  wire[31:0] mux[31:0];
  assign mux[0] = input24;

  wire[31:0] mux[31:0];
  assign mux[0] = input25;

  wire[31:0] mux[31:0];
  assign mux[0] = input26;

  wire[31:0] mux[31:0];
  assign mux[0] = input27;

  wire[31:0] mux[31:0];
  assign mux[0] = input28;

  wire[31:0] mux[31:0];
  assign mux[0] = input29;

  wire[31:0] mux[31:0];
  assign mux[0] = input30;

  wire[31:0] mux[31:0];
  assign mux[0] = input31;

  assign out = mux[address];	// Connect the output of the array




endmodule