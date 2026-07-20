// Clock with alarm and set time
module clock (clk,clkenb,rst,hr,min,sec,setenbtime,sethr,setmin,setsec,setenbalarm,alarmout);
  output reg [5:0]hr,min,sec;
  output reg alarmout;
  input clk,clkenb,rst,setenbtime,setenbalarm;
  input [5:0]sethr,setmin,setsec;
  
  initial 
    begin
      sec=6'd0;
      hr=6'd0;
      min=6'd0;
      alarmout=1'b0;
    end
  always@(posedge clk)
    begin
      if (clkenb)
        sec<=sec+1;
      if((sec==6'd59)&&(clkenb))
        begin
          sec<=6'd0;
      	  min<=min+1;
        end
      if((min==6'd59)&&(sec==6'd59)&&(clkenb))
        begin
          min<=6'd0;
      	  hr<=hr+1;
        end
      if((hr==6'd23)&&(min==6'd59)&&(sec==6'd59)&&(clkenb)||(rst))
        begin
          hr<=6'd0;
          min<=6'd0;
          sec<=6'd0;
        end
      if (setenbtime)
        begin
          sec<=setsec;
          min<=setmin;
          hr<=sethr;
        end
      if ((setenbalarm)&&(sec==setsec)&&(min==setmin)&&(hr==sethr))
        alarmout<=1;
      if (~setenbalarm)
        alarmout<=0;
    end
endmodule