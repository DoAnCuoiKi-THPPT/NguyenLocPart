function dx = daoham_xy_oh(app,xi,yi,x)
    h = xi(2) - xi(1);
    x_index = uint16((x - xi(1)) / h + 1);
    if(app.xapxitien_daoham.Value == 1)
        dx = (yi(x_index + 1) - yi(x_index)) / h;
    elseif(app.xapxilui_daoham.Value == 1)
        dx = (yi(x_index) - yi(x_index - 1)) / h;
    end
end