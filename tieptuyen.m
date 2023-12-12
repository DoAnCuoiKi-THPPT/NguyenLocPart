function tieptuyen(app,fx)
    a = app.a_nghiem.Value;
    b = app.b_nghiem.Value;
    syms x;
    x0 = a;
    count = 1;
    fxdh1 = diff(fx,x);
    fxdh2 = diff(fx,x,2);
    daucuadaoham2 = -1;
    j = 1;
    w = a : b;
    for i = a:b
        z(j) = subs(fxdh1,i);
        j = j + 1;
    end
    disp(z)
    saiso = app.saiso_nghiem.Value;
    dkht = 1;
    j = 1;
    for i = a : b
        p1(j) = double(subs(fxdh1,i));
        p2(j) = double(subs(fxdh2,i));
        if(i>j)
            if(p1(j) * p1(j-1) < 0)
                dkht = 0;
            end
            if(p2(j) * p2(j-1) < 0)
                dkht = 0;
            end
        end
        j = j + 1;
    end
    if(p2(1)*-1 < 0)
        daucuadaoham2 = 1;
    end
    f = double(subs(fx,b));
    if(f*daucuadaoham2 > 0)
        x0 = b;
    end
    if(dkht == 1)
        x1 = double(x0 - double(subs(fx,x0) / double(subs(fxdh1,x0))));
        arr = [x0,x1];
        e = x1 - x0;
        u = 3;
        while(e > saiso)
            arr(u) = arr(u - 1) - double(subs(fx,arr(u-1))) / double(subs(fxdh1,arr(u-1)));
            e = arr(u) - arr(u-1);
            u = u + 1;
            count = count + 1;
        end
        s = length(arr);
    else
        msgbox("Vi phạm điều kiện hội tụ !!!");
    end
    disp(length(w));
    disp(length(arr));
    plot(app.bieudo_nghiem,w,z,'red');
    app.ketqua_nghiem.Value = num2str(arr(s));
    app.solanlap_nghiem.Value = num2str(count);
end