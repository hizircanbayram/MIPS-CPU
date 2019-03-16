module full_adder_opr(sum, carry_out, a, b, carry_in);
input a, b, carry_in;
output sum, carry_out;
wire temp_sum, first_carry_out, second_carry_out;
half_adder_opr first_sum(temp_sum, first_carry_out, a, b);
half_adder_opr second_sum(sum, second_carry_out, temp_sum, carry_in);

or final_carry_out(carry_out, second_carry_out, first_carry_out);

endmodule