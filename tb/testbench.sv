// Clock testbench
module clock_tb;
  reg [5:0]sethr,setmin,setsec;
  reg clk,clkenb,rst,setenbtime,setenbalarm;
  wire [5:0]hr,min,sec;
  wire alarmout;
  
  clock tb (clk,clkenb,rst,hr,min,sec,setenbtime,sethr,setmin,setsec,setenbalarm,alarmout);
  
  initial 
    clk=0;
  always
    #1 clk=~clk;
  
  initial begin
     $dumpfile("dump.vcd");
     $dumpvars(0,clock_tb);
    $monitor($time,"clkenb=%0d,rst=%0d,hr=%0d,min=%0d,sec=%0d,setenbtime=%0d,sethr=%0d,setmin=%0d,setsec=%0d,setenbalarm=%0d,alarmout=%0d",clkenb,rst,hr,min,sec,setenbtime,sethr,setmin,setsec,setenbalarm,alarmout);
    #1 clkenb=1;rst=0;setenbalarm=0; setenbtime=0;
    #2 sethr=6'd0;setmin=6'd16;setsec=6'd7;setenbalarm=1;
    #10 rst=1;
    #15 rst=0;
    #4000 setenbtime=1;
    #4005 setenbtime=0;
    #5000 setenbalarm=0;
    #10000 $finish;
  end
endmodule
    
