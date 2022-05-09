clear
clc
close all


g = 9.8;
k = 1;
u = 0.5 * sqrt(g/k)

X = [0.5 0];
[N,D] = linmod('part_3_1',X,u);
sys = tf(N,D);
display(sys)