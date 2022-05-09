T = 0.05;

%Part 4.2 (2)==========================================

F = [3.2006    0.1440]; % from 4.2
f1 = F(1);
f2 = F(2);
alpha = 10;

gain1 = f2*alpha / (1+alpha*T);
gain2 = 1/(1+alpha*T);

%Part 4.2 (3)==========================================
c = (f1 + alpha*f2);
d = f1*alpha;
CT_sys = tf([c d],[1 alpha]);
DT_sys = c2d(CT_sys,T,'tustin')
