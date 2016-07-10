function y=average(x)
L=length(x);
sum=0;
for i=1:L
sum=sum+x(i);
end
y=sum/L;