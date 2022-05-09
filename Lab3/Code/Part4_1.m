%Part 4.1
%Q1
syms z;
K = 10 ^ (-5);
Np = 1;
Dp = (z-1);
P = Np/Dp
Nc = K*(z-0.522)*(z+0.45);
Dc = (z-0.96)*(z-0.94)*(z-0.92);
C = Nc/Dc

delta = Np*Nc + Dp*Dc;
poles = abs(vpa(root(delta,z)))


