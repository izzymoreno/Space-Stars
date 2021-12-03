program ZVEZDNOE_NEBO;
uses graph,crt;
var
n: word;
x,y: integer;
a : array [1..500] of real;
b : array [1..500] of integer;
Label
label1;
function DetectVGA256 : Integer; FAR;
begin
  DetectVGA256 := 0;
end;

PROCEDURE initgrap;
VAR Gd,Gm  : integer;
     BEGIN
     Gd := InstallUserDriver('SVGA256',@DetectVGA256);
     Gm := 2;
     InitGraph(Gd, gm ,'c:\language\bp_70\bgi');
     END;
begin
initgrap;
For n:=1 to 500 do
   begin
   a[n]:=Random(640);
   b[n]:=Random(480);
   end;
label1:
For n:=1 to 500 do
   begin
   x:=round(a[n]);
   Putpixel(x,b[n],0);
   IF n<=100 then a[n]:=a[n]-1;
   IF (n>100) and (n<=200) then a[n]:=a[n]-0.8;
   IF (n>200) and (n<=300) then a[n]:=a[n]-0.6;
   IF (n>300) and (n<=400) then a[n]:=a[n]-0.4;
   IF (n>400) and (n<=500) then a[n]:=a[n]-0.2;

   x:=round(a[n]);
   Putpixel(x,b[n],15);
   IF a[n]<=0 then
     begin
     x:=round(a[n]);
     Putpixel(x,b[n],0);
     a[n]:=640;
     b[n]:=Random(480);
     end;
   end;
GOTO Label1
end.