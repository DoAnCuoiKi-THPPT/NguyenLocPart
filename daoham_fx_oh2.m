function dx = daoham_fx_oh2(fx,x,h,app)
    if (app.xapxitien_daoham.Value == 1)
        dx = (4*fx(x+h) - 3*fx(x) - fx(x+2*h)) / (2*h);
    elseif(app.xapxilui_daoham.Value == 1)
        dx = (3*fx(x) - 4*fx(x - h) + fx(x-2*h)) / (2*h);
    else
        dx = (fx(x+h) - fx(x-h)) / (2*h);
    end
end