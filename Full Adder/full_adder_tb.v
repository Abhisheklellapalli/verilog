module full_adder_tb;
  reg a,b,cin;
  wire sum,cout;
  full_adder dut(a,b,cin,sum,cout);
//   full_adder dut(.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));
  initial 
    begin
      for (int i=0;i<8;i++)
        begin
          {a,b,cin} =i;
          #10;
          $display("a = %b b = %b cin = %b | sum = %b cout = %b",a,b,cin,sum,cout);
        end
    end
endmodule
