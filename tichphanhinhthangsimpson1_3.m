function [dx,saiso] =  tichphanhinhthangsimpson1_3(fx,a,b,n)
    syms x;
    fx1 = diff(fx,x,4);
    h = (b-a)/n;
    j = 1;
    z1 = 0;
    z2 = 0;
    for i = a:h:b
        y(j) = fx(i);
        j = j + 1;
    end
    for i = 2 : n
        if(rem(i,2))
            z1 = z1 + y(i);
        else
            z2 = z2 + y(i);
        end
    end
    dx = (h/3)* (y(1) + y(n+1) + 2*z1 + 4*z2);
    arr = [ subs(fx1,a) subs(fx1,b)];
    m = max(arr);
    saiso = ((b-a)/180)*m*power(h,4);
    disp(saiso);
end