module ha_tb;
  reg a,b;
  wire sum,carry;
  ha haa(.a(a), .b(b), .sum(sum), .carry(carry));
  initial 
    begin
      $display("Time\t a\t b\t sum\t carry");
      $monitor("%0t\t %b\t %b\t %b\t %b", $time, a,b,sum,carry);
      a=0;b=0;
      #10;
      a=0;b=1;
      #10;
      a=1;b=0;
      #10;
      a=1;b=1;
      #10;
      $finish;
    end
endmodule
