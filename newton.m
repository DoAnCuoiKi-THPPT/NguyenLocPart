function [res,bac] = newton(a, b)
syms x;
   n=length(a);
   bac = n - 1;
   f=zeros(n,n);
   f(:,1)=b;
   for i=2:n
      for j=2:n
         if j<=i
            f(i,j)=(f(i,j-1)-f(i-1,j-1))/(a(i)-a(i-j+1)); 
         end
      end
   end
   res=0;
   k=1;
   for i=1:n
       res=res+f(i,i)*k;
       k=(x-a(i))*k;
   end
   res = expand(res);
end