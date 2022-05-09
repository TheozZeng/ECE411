clear
clc
close all

g = 9.8
k =1

% Define system
syms u x1 x2 
X = [x1 ;x2];
f1 = x2;
f2 = g - k*u^2/x1^2;
d_X = [f1 ;f2];

%find equilibrium value
A = [diff(f1,x1) diff(f1,x2);
     diff(f2,x1) diff(f2,x2)]
B = [diff(f1,u);
     diff(f2,u)]
C = [1 0]
D = 0

x1 = 0.5
x2 = 0
u = (49/20)^(0.5)


A = vpa(subs(A))
B = vpa(subs(B))

A = [0 1;39.2 0]
B = [0 ;-12.52]

[b,a] = ss2tf(A,B,C,D);
sys = tf(b,a)

