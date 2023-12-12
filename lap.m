function lap(app,gx,n,fx)
    a = app.a_nghiem.Value;
    b = app.b_nghiem.Value;
    syms x;
    w1 = a:b;
    g1 = diff(gx,x);
    x1 = double(abs(subs(g1,a)));
    x2 = double(abs(subs(g1,b)));
    mang = [x1 x2];
    saiso = app.saiso_nghiem.Value;
    q = max(mang,[],'all');
    if(q < 1)
        x0 = b;
        while(1)
            xi = gx(x0);
            if(abs(gx(xi) - x0) < saiso)
                res = xi;
                break;
            end
            x0 = xi;
            n = n + 1;
        end
         for i = 1 : 10
             z(i) = gx(i);
         end
         for i = 1:length(w1)
             z1(i) = fx(i);
         end
        w = 1:10;
        plot(app.bieudo_nghiem,w,z,'red',w,w,'blue');
        app.ketqua_nghiem.Value = num2str(res);
        app.solanlap_nghiem.Value = num2str(n);
    else
        msgbox("Vi phạm điều kiện hội tụ !!!");
    end
end