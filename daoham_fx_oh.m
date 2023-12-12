function dx = daoham_fx_oh(app,fx, h, x)
    if(app.xapxitien_daoham.Value == 1)
        dx = (fx(x + h) - fx(x)) / h;
    else
        dx = (fx(x) - fx(x - h)) / h;
    end
end