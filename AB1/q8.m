numg = [100 2200 4000];
deng = [1 8 19 12];
G = tf(numg,deng);

A = [0 1 0;0 0 1;-12 -19 -8];
B = [0;0;1];
C = [4000 2200 100];
D = 0;

UP = 10; 
Ts = 2;
z=(-log(UP/100))/(sqrt(pi^2+log(UP/100)^2));

wn = 4/(z*Ts);

[num,den] = ord2(wn,z);
r = roots(den);


% Alocação do terceiro polo
polos_d  = [r(1) r(2) -20];

% Equação característica desejada
eq_carac_d = poly(polos_d);

%
K = acker(A,B,polos_d)

step(A-B*K,B,C,D);

% Com isso temos
% Regime permanente: 17.5
% Tempo de subida: 0.182s
% Tempo de acomodação: 2,15s
% Overshoot: 43,1%