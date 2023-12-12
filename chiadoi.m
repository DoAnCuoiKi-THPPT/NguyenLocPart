function chiadoi(app,fx,n,w)
                x = fx(app.a_nghiem.Value);
                y = fx(app.b_nghiem.Value);
                a = app.a_nghiem.Value;
                b = app.b_nghiem.Value;
                saiso = app.saiso_nghiem.Value;
                if(x * y < 0)
                while(b - a > saiso)
                    c = (a + b) / 2 ;
                    if(fx(c) * fx(a) < 0)
                        b = c ;
                    else 
                        a = c ;
                    end
                    n = n + 1 ;
                end
                app.ketqua_nghiem.Value = num2str(a);
                app.solanlap_nghiem.Value = num2str(n);
                disp(w);
                for i = 1 : length(w)
                    z = fx(w);
                end
                j = 0 .* w;
                disp(z);
                
                plot(app.bieudo_nghiem,w,z,'red',w,j,'blue');
                else
                    msgbox("Vi phạm điều kiện hội tụ !!!");
                end
        end