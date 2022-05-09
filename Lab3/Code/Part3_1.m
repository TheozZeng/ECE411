%============================== Part 3.1 ==============================
%---------------- Q1

A = [0 1    0 0 0;
    -1 0    0 -1 0;
    
    0 0     0 0 0;
    0 0     0 0 1;
    0 0     0 -100 0];

B = [0;
     1;
     
     0;
     0;
     0];
 
D = [-1 0   1 0 0];
T = 0.1;

sys_c = ss(A,B,D,0);
sys_d = c2d(sys_c,T);
[Ad,Bd,Dd,dummy] = ssdata(sys_d);

A1 = Ad(1:2,1:2);
A2 = Ad(3:5,3:5);
A3 = Ad(1:2,3:5);
B1 = Bd(1:2);
D1 = Dd(1:2);
D2 = Dd(3:5);

%---------------- Q2
p1 = [0.0001 -0.0001];
F1 = - place(A1,B1,p1)

% p1 = [0 0];
% F1 = place(A1,B1,p1)

% p1 = [0.8+0.2i 0.8-0.2i];
% F1 =  - place(A1,B1,p2)

%---------------- Q3
% define dimention
n = 2;
p = 3;
m = 1;
q = 1;

Ip = eye(p);
In = eye(n);


M1 = kron(Ip,(A1+B1*F1))- kron(A2.',In);
M2 = kron(Ip,B1);
M3 = kron(Ip,D1);
M4 = zeros(p*q,m*p);
M = [M1 M2;
     M3 M4];
 
VA3 = A3(:);
VD2 = D2(:);
V = - [VA3;
       VD2];
   
Res = inv(M)*V;
X = reshape(Res(1:(n*p)),[n,p]);
F2 = reshape(Res((n*p)+1:end),[m,p]);
F = [F1 F2]

%---------------- Q4
pole1 = [0.001 0.002 -0.001 -0.002 0];
L1 =  - place(Ad.',Dd.',pole1)
L1 = [-105 42.6 -109 -126 473];

pole2 = [0.1 0.1+0.3i 0.1-0.3i 0.2+0.2i 0.2-0.2i];
L2 =  - place(Ad.',Dd.',pole2)

L = L2.'

%system for controller
% input e output u
Ac = Ad + Bd*F + L*Dd;
Bc = - L;
Cc = F;

sys_controller = ss(Ac,Bc,Cc,0,T);
tf_controller = tf(sys_controller)





