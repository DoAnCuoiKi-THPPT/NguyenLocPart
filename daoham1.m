function dx = daoham1(xi,yi,x)
    h = xi(2) - xi(1);
    n = (x - xi(1))/h + 1;
    n = cast(n,'uint16');
    disp(n);
    dx = (yi(n+1) - yi(n)) / h;
end