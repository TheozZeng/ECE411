function [xq] = quant(x,q)
    xq = q*round(x/q);
end