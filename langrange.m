function [res,bac] = langrange(a,b)
syms x;
n = length(a);
bac = n - 1;
   res = 0;
   for i = 1:n
       L = 1;
       for j = 1:n
           if j ~= i
                L = L * (x-a(j)) / (a(i)-a(j)); 
           end
       end
       res = res + b(i)*L;
   end
   res = expand(res);  
end
