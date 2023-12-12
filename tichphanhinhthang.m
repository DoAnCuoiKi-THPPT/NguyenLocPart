function [dx,saiso] = tichphanhinhthang(fx,a,b,n)
    syms x;
    fx1 = diff(fx,x,2);
    tmp = 0;
    h = (b-a)/n;
    j = 1;
    y = [];
    for i = a:h:b
        y(j) =  fx(i);
        j = j + 1;
    end
    
    for i = 2:length(y)-1
        tmp = tmp + y(i);
    end
    dx = (h/2) * (y(1) + y(n+1) + 2*tmp);
    arr = [ subs(fx1,a) subs(fx1,b)];
    m = max(arr);
    r = ((m*(b - a)) / 12) * power(h,2);
    saiso = r;
end