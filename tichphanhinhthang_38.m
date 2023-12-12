    function [dx,saiso] = tichphanhinhthang_38(fx,a,b,n)
    h = (b - a)/n;
    syms x;
    k = 1 : 1 : n - 1;
    j = 1;
    for i = 1 : length(k)
        S(j) = fx(a + k(i) *h);
        j = j + 1;
    end
    disp(S);
    i = 3 : 3 : n - 1;
    S1 = sum(S(i));
    S(i) = [];
    S0 = sum(S);
    dx = (3 * h / 8) * (fx(a) + fx(b) + 3 * S0 + 2 * S1);
    fx = diff(fx,x,4);
    arr =[];
    a1 = a;
    for i = 1: 1 : b
        if( a1 <= b)
            arr(i) = subs(fx,a1);
            a1 = a1 +1;
        end
    end
    m = min(arr);
    saiso = ((b-a)*m*power(h,4))/80;
    end