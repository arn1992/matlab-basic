function [ans] = convert (ti,tf)
 
j = 1;
for i=ti:1:tf
   tempF =  round((9 / 5 ) * i + 32);
   ans (j,1) = i;
   ans (j,2) = tempF;
j = j + 1;
end