%===================== Part 3.1 =====================
%======== Q1
% G = 1 / (s^2 + 0.8s + 1)
G = tf([1],[1 0.8 1]);
figure;
bode(G,{0,6});
title('G(s) bode plot');
grid on;


%======== Q2
% i)
T = 1;
Gz = c2d(G,T,'impulse');

% ii)
figure;
dbode(Gz,T,[0 10]);
title('G(z) bode plot');

% iii)
figure;
bode(G,{0,6});
hold on;
dbode(Gz,T,[0 10]);
legend('Gs','Gz');
title('Compare Gz Gs');

%======== Q3
%covert TF - SS for G
A = [0 1; -1 -0.8];
B = [0 ; 1];
C = [1 0];
D = 0;
I = [1 0; 0 1];
sys_c = ss(A,B,C,D);
sys_d = c2d(sys_c,T);
[Ad,Bd,Cd,Dd] = ssdata(sys_d)
z = tf('z',T);
Gd = Cd * inv(z*I - Ad)*Bd + Dd;


figure;
bode(G,{0,6});
hold on;
dbode(Gz,T,[0 10]);
hold on;
dbode(Gd,T,[0 10]);
legend('Gs','Gz','Gd');
title('Compare Gs Gz Gd');

