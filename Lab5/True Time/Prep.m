syms M m l g;
A = [0 1 0             0;
     0 0 -(m*g)/M      0;
     0 0 0             1;
     0 0 (M+m)*g/(M*l) 0];

B = [0;
     1/M;
     0;
     -1/(M*l);];


g = 9.81;
% Pendulum A
M = 0.45;
m = 0.2;
l = 0.3;

A1 = double(subs(A))
B1 = double(subs(B))

% Pendulum B
M = 0.45;
m = 0.26;
l = 0.35;

A2 = double(subs(A))
B2 = double(subs(B))

% Pendulum C
M = 0.45;
m = 0.3;
l = 0.4;

A3 = double(subs(A))
B3 = double(subs(B))


%Q3============================
p = [-2,-1,-3,-4];
F1 = - place(A1,B1,p);



A_new = A1;
B_new = B1;
C_new = eye(4);
D_new = [0; 0; 0; 0];

r = [1; 0; 0; 0];




