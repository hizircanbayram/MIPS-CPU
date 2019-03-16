module control_unit(select_bits_ALU, function_code);

input [5:0] function_code;
output [2:0] select_bits_ALU;

wire [1:0] o2;
wire o1;
wire [3:0] o0;
wire w1, w2, w3, w4, w5, w6, w7;



// O0 = (F2 & F0) + ('F5 * F1 * 'F0)
not cu7(w1, function_code[0]);
not cu8(w2, function_code[5]);
and cu9(w3, function_code[1], w1, w2);
and cu10(w4, function_code[2], function_code[0]);
or cu11(select_bits_ALU[0], w3, w4);


// O1 = 'F1 XOR F2
not cu4(w5, function_code[1]);
xor cu5(select_bits_ALU[1], w5, function_code[2]);


// O2 = F1 + '(F5 + F0)
or cu1(w6, function_code[5], function_code[0]);
not cu2(w7, w6);
or cu3(select_bits_ALU[2], w7, function_code[1]);

endmodule