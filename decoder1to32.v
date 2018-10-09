module decoder1to32
(
	output[31:0]  out,
	input         enable,
	input[4:0]    address
);
    assign out = enable<<address; 
endmodule

// The assign out line uses the left shift operator to shift the significant digit of enable to be in the right position according to the address
// If enable is 1 (high), and address i 0000, then we do not shift enable at all and the first output bit is 1 while the rest are zeros.
// If enable is 1 (high), and address i 0011, then it will shift enable by 3 and the output will be 1 with three zeros behind it: 1000, which corresponds to that output index being high.
// The same pattern continues for all possible address values
// If enable is 0 (low), then no matter what the address is, it will be all 0's.