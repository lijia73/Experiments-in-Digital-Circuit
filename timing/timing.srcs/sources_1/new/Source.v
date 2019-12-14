`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/12/20 01:09:55
// Design Name: 
// Module Name: Source
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////



module Source(
  input b_up,//上调时间
  input set,//设置时间
  input clk,
  input state,//设置显示
  output reg [6: 0] a,
  output reg [3: 0] b, 
  output reg s_led1,
  output reg s_led2,
  output reg s_led3,
  output reg a_led1,
  output reg a_led2,
  output reg a_led3,
  output reg a_led4,
  output reg a_led5,
  output reg a_led6
    );
 //设置0-9在数码管上的显示
 reg [6:0] Dig [0:9];
 reg [2:0] adjust;//0正常走表，1调秒，2调分
 reg [2:0] show;//0显示分秒，1显示时天，2显示月年
 reg up;//上调时间
 initial begin
   Dig[0] <= 7'b0000001;
   Dig[1] <= 7'b1001111;
   Dig[2] <= 7'b0010010;
   Dig[3] <= 7'b0000110;
   Dig[4] <= 7'b1001100;
   Dig[5] <= 7'b0100100;
   Dig[6] <= 7'b0100000;
   Dig[7] <= 7'b0001111;
   Dig[8] <= 7'b0000000;
   Dig[9] <= 7'b0000100;
   show = 0;
   up = 0;
   adjust = 0;
 end
 reg [3:0] pos = 0;
 reg [10:0] sec = 0;
 reg [10:0] temp1 = 0;
 reg [10:0] temp2 = 0;
 reg [10:0] min = 0; 
 reg [10:0] hour = 0;
 reg [10:0] day = 1;
 reg [10:0] mon = 1;
 reg [10:0] year = 17;
 reg [32:0] num = 0;
 reg [10:0] n = 0;
 always@(posedge set) begin
    adjust = adjust + 1;
    if (adjust == 7)
        adjust = 0;
    if (adjust == 0) begin
        a_led1 = 0;
        a_led2 = 0;
        a_led3 = 0;
        a_led4 = 0;
        a_led5 = 0;
        a_led6 = 0; 
     end
     else if (adjust == 1) begin
         a_led1 = 1;
         a_led2 = 0;
         a_led3 = 0;
         a_led4 = 0;
         a_led5 = 0;
         a_led6 = 0; 
      end
      else if (adjust == 2) begin
          a_led1 = 0;
          a_led2 = 1;
          a_led3 = 0;
          a_led4 = 0;
          a_led5 = 0;
          a_led6 = 0; 
       end
       else if (adjust == 3) begin
           a_led1 = 0;
           a_led2 = 0;
           a_led3 = 1;
           a_led4 = 0;
           a_led5 = 0;
           a_led6 = 0; 
        end
          else if (adjust == 4) begin
            a_led1 = 0;
            a_led2 = 0;
            a_led3 = 0;
            a_led4 = 1;
            a_led5 = 0;
            a_led6 = 0; 
         end
         else if (adjust ==5) begin
           a_led1 = 0;
           a_led2 = 0;
           a_led3 = 0;
           a_led4 = 0;
           a_led5 = 1;
           a_led6 = 0; 
        end
        else if (adjust ==6) begin
          a_led1 = 0;
          a_led2 = 0;
          a_led3 = 0;
          a_led4 = 0;
          a_led5 = 0;
          a_led6 = 1; 
       end
end
 always@(posedge state) begin
    show = show+1;
    if (show == 3) 
        show = 0;
    if (show == 0) begin
        s_led1 = 1;
        s_led2 = 0;
        s_led3 = 0;
    end
    else if (show == 1) begin
             s_led1 = 0;
s_led2 = 1;
s_led3 = 0;
    end
    else if (show == 2) begin
         s_led1 = 0;
    s_led2 = 0;
    s_led3 = 1;
    end
end
 //在数码管上显示时间
 always@(pos) begin
   if(pos == 0) begin
     if(show == 0)
       n = year / 10;
     else if(show == 1)
       n = min / 10;
     else if(show == 2)
       n = day / 10;
     a = Dig[n];
     b = 4'b0111;
   end
   if(pos == 1) begin
     if(show == 0)
       n = year % 10;
     else if(show == 1)
       n = min % 10;
     else if(show == 2)
       n = day % 10;
     a = Dig[n];
     b = 4'b1011;
   end
   if(pos == 2) begin
     if(show == 0)
       n = mon / 10;
     else if(show == 1)
       n = sec / 10;
     else if(show == 2)
       n = hour / 10;
     a = Dig[n];
     b = 4'b1101;
   end
   if(pos == 3) begin
     if(show == 0)
       n = mon % 10;
     else if(show == 1)
       n = sec % 10;
     else if(show == 2)
       n = hour % 10;
     a = Dig[n];
     b = 4'b1110;
   end
 end
 //分频
 always@(posedge clk) begin
   num = num + 1;
   if (num == 100000000) begin 
    num = 0;
   if (adjust == 0) begin
            sec = sec + 1;
   end
   else if (adjust == 1 && b_up == 1) 
        sec = sec + 1;
   else if (adjust == 2 && b_up == 1)
        min = min + 1;
   else if (adjust == 3 && b_up == 1)
        hour = hour + 1; 
   else if (adjust == 4 && b_up == 1)
        day = day + 1;
   else if (adjust == 5 && b_up ==1)
        mon = mon + 1;
   else if (adjust == 6 && b_up == 1)
        year = year + 1;
 end
      if(sec == 60) begin
          sec = 0; 
          min = min + 1;
        end
        if(min == 60) begin
          min = 0;
          hour = hour + 1;
        end
        if(hour == 24) begin
          hour = 0;
          day = day + 1;
        end
        if(day == 31) begin
          day = 1;
          mon = mon + 1;
        end
        if(mon == 13) begin
          mon = 1;
          year = year + 1;
        end
        if(year == 100) begin
          year = 17;
        end
   if (num == 100000000)
    num = 0;
   if(num % 25000 == 0) begin
     pos = pos + 1;
   end
   if(pos == 4) begin
     pos = 0;
   end
end
 
endmodule
