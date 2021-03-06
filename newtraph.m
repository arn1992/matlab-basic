function [ root,ea,iter ] = newtraph( f,df,xr,es,maxit )
iter=0;
while(1)
    xrold=xr;
    if df(xr)==0
        disp('error: deriv(x)=0; can''t divide by zero');
        break;
    end
    xr=xr-f(xr)/df(xr);
    iter=iter+1;
    if xr~=0
        ea=abs((xr-xrold)/xr)*100;
    end
    if ea<=es || iter>=maxit
        break;
    end
end;
root=xr;

end
