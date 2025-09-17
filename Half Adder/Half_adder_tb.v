module half_adder_tb();
  reg a,b;
  wire sum,carry;
  half_adder dut(.a(a),
                 .b(b),
                 .sum(sum),
                 .carry(carry)
                );
  initial 
    begin
      $display(" inputs      |      outputs ");
      $display("----------------------------");
      repeat(4)
        begin
          a = $urandom_range(0,1);
          b = $urandom_range(0,1);
          #1;
          $display(" a = %b b = %b | sum = %b carry = %b",a,b,sum,carry);
        end
    end
endmodule
