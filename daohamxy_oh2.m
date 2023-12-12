function dx = daohamxy_oh2(app,xi,yi,x)
    h = xi(2) - xi(1);
    x_index = uint16((x - xi(1)) / h + 1); 
    if(app.xapxitien_daoham.Value == 1)
        dx = (4 * yi(x_index + 1) - 3 * yi(x_index) - yi(x_index + 2)) / (2 * h);
    elseif(app.xapxilui_daoham.Value ==1)
        dx = (3 * yi(x_index) - 4 * yi(x_index - 1) + yi(x_index - 2)) / (2 * h);
    else
        dx = (yi(x_index + 1) - yi(x_index - 1)) / (2 * h); 
    end
end