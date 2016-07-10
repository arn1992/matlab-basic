function [root,iteration,error]=Bisection(f,xl,xu,e,maxit)
iteration=0;     %To see how many iterations, equation took to solve
xm=xl;
error=1;
if  (f(xl)*f(xu)>0)
    disp('Interval have some error')

else
     while ( abs(error) > abs(e)&& iteration<=maxit)
        iteration=iteration+1;
        xmOld=xm;
        xm=(xl+xu)/2;   %Mid point
        xmNew=xm;
        if f(xl)*f(xm)<0   %if f(xm) is neg, equate xu with xm
            xu=xm;
        else if f(xl)*f(xm)>0 %if f(xm) is pos, equate xl with xm
            xl=xm;
            else            %it means xm is our root
            break
            end
        error=(xmNew-xmOld)/xmNew;   %Error
        end

    end

end
root=xm;
