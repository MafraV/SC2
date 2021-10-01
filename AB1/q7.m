A = [0 1 0;0 0 1;-200 -110 -19];
B = [0;0;1];
C = [3 4 1];
D = 0;
% Por comparação das equações características, sabemos que K3 = -3 K2 = -1 K1 =-6
% Porém, utilizando o Matlab:
r = roots([1 16 109 194]);

polos = [r(1) r(2) r(3)];

K = acker(A,B,polos)

[numc,denc] = ss2tf(A-B*K,B,C,D);

G_c = tf(numc,denc)
