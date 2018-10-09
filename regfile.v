//------------------------------------------------------------------------------
// MIPS register file
//   width: 32 bits
//   depth: 32 words (reg[0] is static zero register)
//   2 asynchronous read ports
//   1 synchronous, positive edge triggered write port
//------------------------------------------------------------------------------

`include "register32.v"
`include "register32zero.v"
`include "mux32to1by1.v"
`include "mux32to1by32.v"
`include "decoder1to32.v"

module regfile
(
output[31:0]	ReadData1,	// Contents of first register read
output[31:0]	ReadData2,	// Contents of second register read
input[31:0]	WriteData,	// Contents to write to register
input[4:0]	ReadRegister1,	// Address of first register to read
input[4:0]	ReadRegister2,	// Address of second register to read
input[4:0]	WriteRegister,	// Address of register to write
input		RegWrite,	// Enable writing of register when High
input		Clk		// Clock (Positive Edge Triggered)
);


	reg[31:0] toReg;
	reg[31:0] toActiveMux;
	reg[31:0] toUnactiveMux;

	decoder1to32 decoder1to32(.out(toReg), .enable(RegWrite), .address(WriteRegister));
	// output[31:0]  out,
	// input         enable,
	// input[4:0]    address


	// Need two muxes to decide between 1 and 2 and between 0 and 32reg

	// The 32Mux that isnt being written to gets the 0s Reg


	reg32 register32(.q(toMux1),.d(toReg),.wrenable(RegWrite), .clk(Clk));
 	//output[31:0]	q,
	// input[31:0]		d,
	// input		wrenable,
	// input		clk

 	reg32Z register32zero(.q(ReadData1),.d(ReadRegister1), .wrenable(RegWrite), .clk(Clk));
 	//output[31:0]	q,
	// input[31:0]		d,
	// input		wrenable,
	// input		clk

	mux32to1by32 mux32to1by32(.out(ReadData1), .address(ReadRegister1), .inputs(toMux1));
	// output[31:0]  out,
	// input[4:0]    address,
	// input[31:0]   input0, input1...input31

	mux32to1by1 mux32to1by1(.out(ReadData2), .address(ReadRegister2d), .inputs(toMux2));
	// output      out,
	// input[4:0]  address,
	// input[31:0] inputs

  // These two lines are clearly wrong.  They are included to showcase how the 
  // test harness works. Delete them after you understand the testing process, 
  // and replace them with your actual code.
  assign ReadData1 = 42;
  assign ReadData2 = 42;

endmodule

